/*
 * helloworld.c: simple test application for Open Source DMA
 *
 *   now includes attempt to send more than 64 Bytes...
 */
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"

#include "expect.h"
#include "input_data.h"

#define LED XPAR_AXILITE2BFT_V2_0_0_BASEADDR+16
#define SW  XPAR_AXILITE2BFT_V2_0_0_BASEADDR+8



#define min(a,b) ((a<b)?a:b)

//#define VERBOSE_DMA 1
#undef VERBOSE_DMA

// define if use address bits 32 or above
//   if all fits into bottom 31 bits, leave undef
#undef HIGH_ADDRESS_BITS
//#define HIGH_ADDRESS_BITS
// You can launch the mm2s and s2mm several times.
// However, max of packet_len_bytes is 64 for one launch
//#define PACKET_LEN_BYTES    64
#define SEND_PACKET_LEN_BYTES    (88000*4)
#define RECV_PACKET_LEN_BYTES    (2000*4)

//#define TEST_LEN_BYTES     (4*1024*1024)
//#define TEST_LEN_BYTES     (38336)

#define SEND_LEN_BYTES	(88000*4)
#define RECV_LEN_BYTES  (2000*4)

//Define MM2S registers
#define MM2S_CMD_CONTROL 	XPAR_AXIMM2S_0_BASEADDR
#define MM2S_CMD_UNUSED_1 	XPAR_AXIMM2S_0_BASEADDR+4
#define MM2S_CMD_ADDRLO 	XPAR_AXIMM2S_0_BASEADDR+8
#define MM2S_CMD_ADDRHI 	XPAR_AXIMM2S_0_BASEADDR+12
#define MM2S_CMD_UNUSED_2 	XPAR_AXIMM2S_0_BASEADDR+16
#define MM2S_CMD_UNUSED_3 	XPAR_AXIMM2S_0_BASEADDR+20
#define MM2S_CMD_LENLO 		XPAR_AXIMM2S_0_BASEADDR+24
#define MM2S_CMD_LENHI 		XPAR_AXIMM2S_0_BASEADDR+28

#define MM2S_R_BUSY_MASK        0x80000000


//Define S2MM registers
#define S2MM_CMD_CONTROL 	XPAR_AXIS2MM_0_BASEADDR
#define S2MM_CMD_UNUSED_1 	XPAR_AXIS2MM_0_BASEADDR+4
#define S2MM_CMD_UNUSED_2 	XPAR_AXIS2MM_0_BASEADDR+8
#define S2MM_CMD_UNUSED_3 	XPAR_AXIS2MM_0_BASEADDR+12
#define S2MM_CMD_ADDRLO 	XPAR_AXIS2MM_0_BASEADDR+16
#define S2MM_CMD_ADDRHI 	XPAR_AXIS2MM_0_BASEADDR+20
#define S2MM_CMD_LENLO 		XPAR_AXIS2MM_0_BASEADDR+24
#define S2MM_CMD_LENHI 		XPAR_AXIS2MM_0_BASEADDR+28

#define S2MM_R_BUSY_MASK        0x80000000
#define S2MM_R_COMPLETE_MASK    0x40000000
#define S2MM_R_CONTINUOUS_MASK	0x10000000


void print_status(void)
{
    unsigned int mm2s_cmd_reg =    Xil_In32(MM2S_CMD_CONTROL);
    unsigned int mm2s_cmd_addrlo = Xil_In32(MM2S_CMD_ADDRLO);
    unsigned int mm2s_cmd_addrhi = Xil_In32(MM2S_CMD_ADDRHI);
    unsigned int mm2s_cmd_lenlo =  Xil_In32(MM2S_CMD_LENLO);
    unsigned int mm2s_cmd_lenhi =  Xil_In32(MM2S_CMD_LENHI);

    unsigned int mm2s_r_busy =       (mm2s_cmd_reg & 0x80000000)>>31;
    unsigned int mm2s_r_err  =       (mm2s_cmd_reg & 0x40000000)>>30;
    unsigned int mm2s_r_complete =   (mm2s_cmd_reg & 0x20000000)>>29;
    unsigned int mm2s_r_continuous = (mm2s_cmd_reg & 0x10000000)>>28;
    unsigned int mm2s_r_increment =  (mm2s_cmd_reg & 0x08000000)>>27;
    unsigned int mm2s_lgfifo =       (mm2s_cmd_reg & 0x001f0000)>>16;

    printf("mm2s: r_busy = %x, r_err  = %x,r_complete = %x,r_continuous = %x,r_increment = %x,lgfifo = %x\n",
    		mm2s_r_busy,
    		mm2s_r_err,
    		mm2s_r_complete,
    		mm2s_r_continuous,
    		mm2s_r_increment,
    		mm2s_lgfifo);

    printf("\tmm2s_cmd_addrlo = %x ", mm2s_cmd_addrlo);
#ifdef HIGH_ADDRESS_BITS
    printf("mm2s_cmd_addrhi = %x ", mm2s_cmd_addrhi);
#endif    
    //    printf("mm2s_cmd_lenhi = %x ", mm2s_cmd_lenhi);
    printf("mm2s_cmd_lenlo = %x\r\n", mm2s_cmd_lenlo);

    //    printf("=========================================================\r\n");

    unsigned int s2mm_cmd_reg = Xil_In32(S2MM_CMD_CONTROL);
    unsigned int s2mm_cmd_addrlo = Xil_In32(S2MM_CMD_ADDRLO);
    unsigned int s2mm_cmd_addrhi = Xil_In32(S2MM_CMD_ADDRHI);
    unsigned int s2mm_cmd_lenlo = Xil_In32(S2MM_CMD_LENLO);
    unsigned int s2mm_cmd_lenhi = Xil_In32(S2MM_CMD_LENHI);


    unsigned int s2mm_r_busy =         (s2mm_cmd_reg & 0x80000000)>>31;
    unsigned int s2mm_r_err  =         (s2mm_cmd_reg & 0x40000000)>>30;
    unsigned int s2mm_r_complete =     (s2mm_cmd_reg & 0x20000000)>>29;
    unsigned int s2mm_r_continuous =   (s2mm_cmd_reg & 0x10000000)>>28;
    unsigned int s2mm_r_increment =    (s2mm_cmd_reg & 0x08000000)>>27;
    unsigned int s2mm_lgfifo =         (s2mm_cmd_reg & 0x001f0000)>>16;
    unsigned int s2mm_r_tlast_syncd =  (s2mm_cmd_reg & 0x04000000)>>26;
    unsigned int s2mm_decode_error =   (s2mm_cmd_reg & 0x02000000)>>25;
    unsigned int s2mm_slave_error =    (s2mm_cmd_reg & 0x01000000)>>24;
    unsigned int s2mm_overflow_error = (s2mm_cmd_reg & 0x00800000)>>23;
    unsigned int s2mm_abort =          (s2mm_cmd_reg & 0x00400000)>>22;


    printf("s2mm: r_busy = %x, r_err  = %x,r_complete = %x,r_continuous = %x,r_increment = %x,lgfifo = %x\n",
    		s2mm_r_busy,
    		s2mm_r_err,
    		s2mm_r_complete,
    		s2mm_r_continuous,
    		s2mm_r_increment,
    		s2mm_lgfifo);

    printf("s2mm: r_tlast_syncd = %x, decode_error  = %x,slave_error = %x, overflow_error = %x, abort = %x\n",
    		s2mm_r_tlast_syncd,
    		s2mm_decode_error,
    		s2mm_slave_error,
    		s2mm_overflow_error,
    		s2mm_abort);


    printf("s2mm_cmd_addrlo = %x\n ", s2mm_cmd_addrlo);
#ifdef HIGH_ADDRESS_BITS
    printf("s2mm_cmd_addrhi = %x\n", s2mm_cmd_addrhi);
#endif    
    //    printf("s2mm_cmd_lenhi = %x ", s2mm_cmd_lenhi);
    printf("s2mm_cmd_lenlo = %x\n\n\n\n\n\n", s2mm_cmd_lenlo);
    //printf("=========================================================\r\n");

}

void simple_dual_dma(UINTPTR send_buffer, int send_length,
		     UINTPTR receive_buffer, int receive_length)
{

#ifdef VERBOSE_DMA
  xil_printf("DMA Called send %x len=%d; rcv %x len=%d\n",
	     send_buffer,send_length,receive_buffer,receive_length);
#endif

  
  int bytes_to_send=send_length;
  int bytes_to_receive=receive_length;
  UINTPTR current_rcv_ptr=receive_buffer;
  UINTPTR current_send_ptr=send_buffer;

  // demand 16b alignment
  // ...want to use assert
  if ((send_length & 0x0f)!=0) {xil_printf("send not aligned\n"); return;}
  if ((receive_length & 0x0f)!=0) {xil_printf("recieve not aligned\n"); return;}

  // do we need to do this once at start to setup?
  Xil_Out32(S2MM_CMD_CONTROL, 0x00000000);
  Xil_Out32(MM2S_CMD_CONTROL, 0x00000000);
  Xil_Out32(S2MM_CMD_LENHI, 0);
  Xil_Out32(MM2S_CMD_LENHI, 0);

#ifndef HIGH_ADDRESS_BITS	  
  // if no high address bits, just set once
  if ((((int64_t)(&send_buffer))>>32)!=0) {xil_printf("unexpected high bits send\n"); return;}
  if ((((int64_t)(&receive_buffer))>>32)!=0) {xil_printf("unexpected high bits send\n"); return;}
  Xil_Out32(S2MM_CMD_ADDRHI, 0);
  Xil_Out32(MM2S_CMD_ADDRHI, 0);
#endif

#ifdef VERBOSE_DMA
  xil_printf("Starting DMA loop");
#endif

  
  while ((bytes_to_send>0) || (bytes_to_receive>0))
  {
#ifdef VERBOSE_DMA
      xil_printf("\tto_send %d to_receive %d\n",bytes_to_send,bytes_to_receive);
      print_status();
#endif
      
      if ((Xil_In32(S2MM_CMD_CONTROL) & S2MM_R_BUSY_MASK)==0) // not busy, ready for next
	{
	  int packet_len_bytes=min(RECV_PACKET_LEN_BYTES,bytes_to_receive);
#ifdef VERBOSE_DMA
	  xil_printf("\t\treceiving next %d, bytes_to_receive=%d\n",packet_len_bytes, bytes_to_receive);
#endif
	  //Xil_Out32(S2MM_CMD_LENHI, 0); // always 0 -- do once at top
	  Xil_Out32(S2MM_CMD_LENLO, packet_len_bytes);
	  Xil_Out32(S2MM_CMD_ADDRLO, ((int64_t)(current_rcv_ptr))       & (0xffffffff));
#ifdef HIGH_ADDRESS_BITS	  
	  Xil_Out32(S2MM_CMD_ADDRHI, (((int64_t)(current_rcv_ptr))>>32) & (0xffffffff));
#endif	  
	  // Set S2MM_CMD_CONTROL[31] to enable S2MM
	  // Get ready to receive data from Fabric to DDR Memory
	  //Xil_Out32(S2MM_CMD_CONTROL, 0x00000000); // assuming don't need to do
	  Xil_Out32(S2MM_CMD_CONTROL, S2MM_R_BUSY_MASK|S2MM_R_CONTINUOUS_MASK);
	  bytes_to_receive-=packet_len_bytes;
	  current_rcv_ptr+=(packet_len_bytes); // UINTPTR is 4 bytes?
	}
    //if(bytes_to_send <64)
    //{
    //	print_status();
    //}
    
      if (((Xil_In32(MM2S_CMD_CONTROL) & MM2S_R_BUSY_MASK)==0)) // not busy, ready for next
	{
	  int packet_len_bytes=min(SEND_PACKET_LEN_BYTES,bytes_to_send);
#ifdef VERBOSE_DMA
	  xil_printf("\t\tsending next %d, bytes_to_send=%d\n",packet_len_bytes, bytes_to_send);
#endif
	  //Xil_Out32(MM2S_CMD_LENHI, 0); // always 0 -- do once at top
	  Xil_Out32(MM2S_CMD_LENLO, packet_len_bytes);
	  Xil_Out32(MM2S_CMD_ADDRLO, ((int64_t)(current_send_ptr))       & (0xffffffff));
#ifdef HIGH_ADDRESS_BITS	  
	  Xil_Out32(MM2S_CMD_ADDRHI, (((int64_t)(current_send_ptr))>>32) & (0xffffffff));
#endif	  
	  // Set MM2S_CMD_CONTROL[31] to kick off the data sending
	  // Move data from DDR Memory to Fabric
	  //Xil_Out32(MM2S_CMD_CONTROL, 0x00000000); // assuming don't need to do
	  Xil_Out32(MM2S_CMD_CONTROL, MM2S_R_BUSY_MASK);
	  bytes_to_send-=packet_len_bytes;
	  current_send_ptr+=(packet_len_bytes); // UINTPTR is 4 bytes?
	}

  }

#ifdef VERBOSE_DMA
      xil_printf("\tto_send %d to_receive %d\n",bytes_to_send,bytes_to_receive);
      print_status();
#endif

#ifdef VERBOSE_DMA
    xil_printf("S2MM_CMD_CONTROL=%x\r\n", Xil_In32(S2MM_CMD_CONTROL));
    xil_printf("MM2S_CMD_CONTROL=%x\r\n", Xil_In32(MM2S_CMD_CONTROL));
#endif

#ifdef VERBOSE_DMA
  xil_printf("initiated last DMA ...waiting for last receive to complete\n");
#endif

  // do we alternately/additionally need to look at complete?
  //while (((Xil_In32(S2MM_CMD_CONTROL) & S2MM_R_COMPLETE_MASK)!=0)
  while ((Xil_In32(S2MM_CMD_CONTROL) & S2MM_R_BUSY_MASK)!=0)
    {
      // wait for completion
    }

    // Clear the CMD registers for S2MM and MM2S
    Xil_Out32(S2MM_CMD_CONTROL, S2MM_R_CONTINUOUS_MASK);
    Xil_Out32(MM2S_CMD_CONTROL, 0x00000000);


#ifdef VERBOSE_DMA
      xil_printf("\tto_send %d to_receive %d\n",bytes_to_send,bytes_to_receive);
      print_status();
#endif

}

void check_results(u32 * output);

// u32 *RxBufferPtr;
// u32 *TxBufferPtr;
volatile u32 RxBufferPtr[RECV_LEN_BYTES/4] __attribute__((aligned(16)));
volatile u32 TxBufferPtr[SEND_LEN_BYTES/4] __attribute__((aligned(16)));

int main()
{
  printf("Hello World!\r\n");
  fflush(stdout);
  
  init_platform();
  int i;
  printf("Initial Status:\r\n");
  print_status();

  u32 switch_value = 0;
  u32 led_value = 0;


  switch_value = Xil_In32(SW);
  printf("switch_value is %08x\n", switch_value);

  led_value = Xil_In32(LED);
  printf("led_value is %08x\n", led_value);
  Xil_Out32(LED, 0xffffffff);
  printf("Turn the LED on\n");
  led_value = Xil_In32(LED);
  printf("led_value is %08x\n", led_value);


  //Initialize the tx buffer



  for(i=0; i<SEND_LEN_BYTES/4; i++)
    {
      TxBufferPtr[i] = input_data[i];
    }
  for(i=0; i<RECV_LEN_BYTES/4; i++)
    {
      RxBufferPtr[i] = 0;
    }

  //Flust out the data into DDR RAM
  Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, SEND_LEN_BYTES);
  Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, RECV_LEN_BYTES);

  // perform actual transfer
  //  (time this when we are read)
  simple_dual_dma((UINTPTR)TxBufferPtr,SEND_LEN_BYTES,(UINTPTR)RxBufferPtr,RECV_LEN_BYTES);

  // Check the receiving data
  int errors=0;
  //for(i=0; i<RECV_LEN_BYTES/4; i++)


  check_results(RxBufferPtr);
  //check_results(output_data);
  if (errors>0)
    xil_printf("FAILED: %d errors \n",errors);
  else
    xil_printf("SUCCESS\n");

  /*
    if(recv_done) {
    	print("Data movement is completed\n\r");
    } else {
    	print("Could not receive all the data\n\r");
    }
  */

    cleanup_platform();
    return 0;
}



void check_results(u32 * output)
{
	int cnt_err= 0;
    // read result from the 32-bit output buffer
    for (int i = 0; i<2000; i++)
    {
      u32 temp = output[i];
      if(output[i] != exp_data[i])
      {
    	  cnt_err++;
    	  printf("output[%d]=%d != exp_data[%d]=%d\n", i, output[i], i, exp_data[i]);
      }
    }
    printf("Accuracy Rate %d / 2000\n", 2000-cnt_err);

}
