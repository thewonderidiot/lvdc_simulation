`timescale 1ns / 1ps

// SLIP special characters
`define SLIP_END     8'hC0
`define SLIP_ESC     8'hDB
`define SLIP_ESC_END 8'hDC
`define SLIP_ESC_ESC 8'hDD

// Message format
`define MSG_LENGTH 3'd6

`define MSGID_TELEMETRY 8'h01
`define MSGID_REGISTERS 8'h02
