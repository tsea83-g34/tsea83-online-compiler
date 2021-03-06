const SP r15
const NULL r14
const BP r13
const RR r12

.data MEMORY_SIZE
	.dh 4096
.data PURE_BLACK
	.dh 0
.data DARK_GRAY
	.dh 73
.data LIGHT_GRAY
	.dh 146
.data PURE_WHITE
	.dh 255
.data PURE_RED
	.dh 224
.data PURE_ORANGE
	.dh 240
.data PURE_YELLOW
	.dh 252
.data PURE_LIME
	.dh 156
.data PURE_GREEN
	.dh 28
.data PURE_TEAL
	.dh 30
.data PURE_AZURE
	.dh 31
.data PURE_BLUE
	.dh 19
.data PURE_MARINE
	.dh 3
.data PURE_PURPLE
	.dh 131
.data PURE_PINK
	.dh 227
.data TEMPLE_BLUE
	.dh 95
.data TEMPLE_YELLOW
	.dh 253
.data TEMPLE_GREEN
	.dh 190
.data TEMPLE_BLUE_DARK
	.dh 45
.data TEMPLE_YELLOW_DARK
	.dh 108
.data TEMPLE_GREEN_DARK
	.dh 77
.data ATOM_PINK
	.dh 207
.data ATOM_GRAY
	.dh 36
.data ATOM_GREEN
	.dh 118
.data ATOM_WHITE
	.dh 182
.data ATOM_BLUE
	.dh 87
.data ATOM_RED
	.dh 233
.data PURPLE_1
	.dh 37
.data PURPLE_2
	.dh 40
.data PURPLE_3
	.dh 134
.data SLEEP_MS_MULT
	.dw 3846
.data VIDEO_TILE_WIDTH
	.dh 40
.data VIDEO_TILE_HEIGHT
	.dh 30
.data VIDEO_TILES
	.dh 0
	load[2] r0, NULL, VIDEO_TILE_WIDTH
	load[2] r1, NULL, VIDEO_TILE_HEIGHT
	mul r0, r0, r1
	store[2] NULL, r0, VIDEO_TILES
.data PALETTE_START
	.dh 0
	load[2] r0, NULL, VIDEO_TILES
	store[2] NULL, r0, PALETTE_START
.data PALETTE_SIZE
	.dh 16
.data VIDEO_MEMORY_SIZE
	.dh 0
	load[2] r0, NULL, VIDEO_TILES
	load[2] r2, NULL, PALETTE_SIZE
	add r0, r0, r2
	store[2] NULL, r0, VIDEO_MEMORY_SIZE
.data VIDEO_PIXEL_WIDTH
	.dh 640
.data VIDEO_PIXEL_HEIGHT
	.dh 480
.data FG_COLOR
	.dh 0
.data BG_COLOR
	.dh 0
.data CURSOR
	.dh 0
.data CURSOR_X
	.dh 0
.data CURSOR_Y
	.dh 0
.data USER_PROGRAMS
	.ds "ls pong snake_paint "
.data USER_PROGRAM_COUNT
	.dh 3
.data width
	.dh 40
.data height
	.dh 30
.data p_height
	.dh 5
.data score1_x
	.dh 1
.data score1_y
	.dh 0
.data score2_x
	.dh 38
.data score2_y
	.dh 0
.data padding
	.dh 2
.data win_score
	.dh 3
.data bg
	.db 0
.data wall
	.db 1
.data p1
	.db 2
.data p2
	.db 3
.data ball
	.db 4
.data score1
	.db 5
.data score2
	.db 6
.data point_zone1
	.db 7
.data point_zone2
	.db 8
.data board
	.db 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
.data starting
	.ds "STARTING..."
.data player_won
	.ds "PLAYER X WON"
.data play_again
	.ds "PRESS ENTER TO PLAY AGAIN"
.data goal
	.ds "GOOOOOAAAAAL"
.data remaking
	.ds "REMAKING..."
.data goodbye
	.ds "GOODBYE"

	subi SP, SP, 1
	call main
	subi SP, SP, 2
__halt:
	rjmp __halt

in:
	move BP, SP
	load[2] r0, BP, 2
	subi SP, SP, 4
	load[4] r1, BP, -4
	in r1, 0
	move RR, r1
	addi SP, SP, 4
	ret

out:
	move BP, SP
	load[4] r0, BP, 4
	load[2] r1, BP, 10
	out 0, r0
	store[4] BP, r0, 4
	move RR, NULL
	ret

vga_write:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
	vgaw r1, r0, 0
	store[2] BP, r1, 6
	move RR, NULL
	ret

outside_bound:
	move BP, SP
	load[2] r0, BP, 2
	load[2] r1, BP, 4
	load[2] r2, BP, 6
	cmp r0, r2
	brge L0
	addi r0, NULL, 0
	rjmp L1
L0:
	addi r0, NULL, 1
L1:
	load[2] r3, BP, 2
	cmp r3, r1
	brlt L2
	addi r3, NULL, 0
	rjmp L3
L2:
	addi r3, NULL, 1
L3:
	or r0, r0, r3
	move RR, r0
	ret

left_shift_l:
	move BP, SP
	load[4] r0, BP, 4
	load[2] r1, BP, 10
L4:
	load[2] r0, BP, 10
	cmpi r0, 0
	brgt L6
	addi r0, NULL, 0
	rjmp L7
L6:
	addi r0, NULL, 1
L7:
	cmpi r0, 0
	breq L5
	load[4] r1, BP, 4
	lsl[4] r1, r1
	load[2] r2, BP, 10
	subi r2, r2, 1
	store[4] BP, r1, 4
	store[2] BP, r2, 10
	rjmp L4
L5:
	load[4] r0, BP, 4
	move RR, r0
	ret

right_shift_l:
	move BP, SP
	load[4] r0, BP, 4
	load[2] r1, BP, 10
L8:
	load[2] r0, BP, 10
	cmpi r0, 0
	brgt L10
	addi r0, NULL, 0
	rjmp L11
L10:
	addi r0, NULL, 1
L11:
	cmpi r0, 0
	breq L9
	load[4] r1, BP, 4
	lsr[4] r1, r1
	load[2] r2, BP, 10
	subi r2, r2, 1
	store[4] BP, r1, 4
	store[2] BP, r2, 10
	rjmp L8
L9:
	load[4] r0, BP, 4
	move RR, r0
	ret

left_shift_i:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
L12:
	load[2] r0, BP, 6
	cmpi r0, 0
	brgt L14
	addi r0, NULL, 0
	rjmp L15
L14:
	addi r0, NULL, 1
L15:
	cmpi r0, 0
	breq L13
	load[2] r1, BP, 4
	lsl[2] r1, r1
	load[2] r2, BP, 6
	subi r2, r2, 1
	store[2] BP, r1, 4
	store[2] BP, r2, 6
	rjmp L12
L13:
	load[2] r0, BP, 4
	move RR, r0
	ret

right_shift_i:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
L16:
	load[2] r0, BP, 6
	cmpi r0, 0
	brgt L18
	addi r0, NULL, 0
	rjmp L19
L18:
	addi r0, NULL, 1
L19:
	cmpi r0, 0
	breq L17
	load[2] r1, BP, 4
	lsr[2] r1, r1
	load[2] r2, BP, 6
	subi r2, r2, 1
	store[2] BP, r1, 4
	store[2] BP, r2, 6
	rjmp L16
L17:
	load[2] r0, BP, 4
	move RR, r0
	ret

left_shift_c:
	move BP, SP
	load[1] r0, BP, 5
	load[2] r1, BP, 6
L20:
	load[2] r0, BP, 6
	cmpi r0, 0
	brgt L22
	addi r0, NULL, 0
	rjmp L23
L22:
	addi r0, NULL, 1
L23:
	cmpi r0, 0
	breq L21
	load[1] r1, BP, 5
	lsl[1] r1, r1
	load[2] r2, BP, 6
	subi r2, r2, 1
	store[1] BP, r1, 5
	store[2] BP, r2, 6
	rjmp L20
L21:
	load[1] r0, BP, 5
	move RR, r0
	ret

right_shift_c:
	move BP, SP
	load[1] r0, BP, 5
	load[2] r1, BP, 6
L24:
	load[2] r0, BP, 6
	cmpi r0, 0
	brgt L26
	addi r0, NULL, 0
	rjmp L27
L26:
	addi r0, NULL, 1
L27:
	cmpi r0, 0
	breq L25
	load[1] r1, BP, 5
	lsr[1] r1, r1
	load[2] r2, BP, 6
	subi r2, r2, 1
	store[1] BP, r1, 5
	store[2] BP, r2, 6
	rjmp L24
L25:
	load[1] r0, BP, 5
	move RR, r0
	ret

sleep_ms:
	move BP, SP
	load[4] r0, BP, 4
	subi SP, SP, 4
	load[4] r1, NULL, SLEEP_MS_MULT
	mul r0, r0, r1
	subi SP, SP, 4
	addi r2, NULL, 0
	store[4] BP, r0, -4
	store[4] BP, r2, -8
	cmpi r2, 0
	breq L28
	addi r0, NULL, 0
	store[4] BP, r0, -8
	rjmp L29
L28:
L29:
L30:
	load[4] r0, BP, -8
	load[4] r1, BP, -4
	cmp r0, r1
	brlt L32
	addi r0, NULL, 0
	rjmp L33
L32:
	addi r0, NULL, 1
L33:
	cmpi r0, 0
	breq L31
	load[4] r2, BP, -8
	addi r2, r2, 1
	store[4] BP, r2, -8
	rjmp L30
L31:
	addi SP, SP, 8
	move RR, NULL
	ret

divide:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
	subi SP, SP, 2
	subi SP, SP, 2
	addi r2, NULL, 0
	store[2] BP, r0, -2
	store[2] BP, r2, -4
L34:
	load[2] r0, BP, -2
	load[2] r1, BP, 6
	cmp r0, r1
	brgt L36
	addi r0, NULL, 0
	rjmp L37
L36:
	addi r0, NULL, 1
L37:
	cmpi r0, 0
	breq L35
	load[2] r2, BP, -2
	sub r2, r2, r1
	load[2] r3, BP, -4
	addi r3, r3, 1
	store[2] BP, r2, -2
	store[2] BP, r3, -4
	rjmp L34
L35:
	subi SP, SP, 4
	load[2] r0, BP, -4
	push[2] BP
	subi SP, SP, 2
	addi r1, NULL, 16
	push[2] r1
	subi SP, SP, 2
	push[4] r0
	store[4] BP, r0, -8
	subi SP, SP, 2
	call left_shift_l
	addi SP, SP, 12
	pop[2] BP
	move r0, RR
	store[4] BP, r0, -8
	load[2] r1, BP, -2
	add r0, r0, r1
	move RR, r0
	addi SP, SP, 8
	ret

string_compare:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
L38:
	load[2] r0, BP, 4
	load[1] r0, r0, 0
	load[2] r1, BP, 6
	load[1] r1, r1, 0
	cmp r0, r1
	breq L40
	addi r0, NULL, 0
	rjmp L41
L40:
	addi r0, NULL, 1
L41:
	cmpi r0, 0
	breq L39
	load[2] r2, BP, 4
	load[1] r2, r2, 0
	cmpi r2, 0
	breq L42
	addi r2, NULL, 0
	rjmp L43
L42:
	addi r2, NULL, 1
L43:
	cmpi r2, 0
	breq L44
	addi RR, NULL, 0
	ret
	rjmp L45
L44:
L45:
	load[2] r0, BP, 4
	addi r0, r0, 1
	load[2] r1, BP, 6
	addi r1, r1, 1
	store[2] BP, r0, 4
	store[2] BP, r1, 6
	rjmp L38
L39:
	load[2] r0, BP, 4
	load[1] r0, r0, 0
	load[2] r1, BP, 6
	load[1] r1, r1, 0
	sub r0, r0, r1
	move RR, r0
	ret

string_length:
	move BP, SP
	load[2] r0, BP, 2
	subi SP, SP, 2
	store[2] BP, r0, -2
L46:
	load[2] r0, BP, 2
	load[1] r0, r0, 0
	cmpi r0, 0
	brne L48
	addi r0, NULL, 0
	rjmp L49
L48:
	addi r0, NULL, 1
L49:
	cmpi r0, 0
	breq L47
	load[2] r1, BP, 2
	addi r1, r1, 1
	store[2] BP, r1, 2
	rjmp L46
L47:
	load[2] r0, BP, 2
	load[2] r1, BP, -2
	sub r0, r0, r1
	move RR, r0
	addi SP, SP, 2
	ret

string_copy:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
L50:
	load[2] r0, BP, 4
	load[1] r0, r0, 0
	cmpi r0, 0
	brne L52
	addi r0, NULL, 0
	rjmp L53
L52:
	addi r0, NULL, 1
L53:
	cmpi r0, 0
	breq L51
	load[2] r1, BP, 6
	load[2] r2, BP, 4
	load[1] r2, r2, 0
	store[1] r1, r2, 0
	load[2] r3, BP, 4
	addi r3, r3, 1
	addi r1, r1, 1
	store[2] BP, r1, 6
	store[2] BP, r3, 4
	rjmp L50
L51:
	move RR, NULL
	ret

memset:
	move BP, SP
	load[2] r0, BP, 2
	load[2] r1, BP, 4
	load[1] r2, BP, 7
	subi SP, SP, 2
	addi r3, NULL, 0
	store[2] BP, r3, -2
L54:
	load[2] r0, BP, -2
	load[2] r1, BP, 4
	cmp r0, r1
	brlt L56
	addi r0, NULL, 0
	rjmp L57
L56:
	addi r0, NULL, 1
L57:
	cmpi r0, 0
	breq L55
	load[2] r2, BP, 2
	load[2] r3, BP, -2
	addi r4, NULL, 1
	mul r4, r3, r4
	add r2, r2, r4
	load[1] r4, BP, 7
	store[1] r2, r4, 0
	addi r3, r3, 1
	store[2] BP, r3, -2
	rjmp L54
L55:
	addi SP, SP, 2
	move RR, NULL
	ret

tile_index_write:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r3, BP, 6
	load[2] r4, NULL, VIDEO_TILES
	cmp r3, r4
	brge L58
	addi r3, NULL, 0
	rjmp L59
L58:
	addi r3, NULL, 1
L59:
	cmpi r3, 0
	breq L60
	addi RR, NULL, 0
	ret
	rjmp L61
L60:
L61:
	push[2] BP
	subi SP, SP, 2
	load[2] r0, BP, 6
	push[2] r0
	load[2] r1, BP, 4
	push[2] r1
	subi SP, SP, 2
	call vga_write
	addi SP, SP, 8
	pop[2] BP
	addi RR, NULL, 1
	ret

tile_coord_write:
	move BP, SP
	load[4] r0, BP, 4
	load[2] r1, BP, 8
	load[2] r2, BP, 10
	load[2] r3, NULL, VIDEO_PIXEL_WIDTH
	cmp r1, r3
	brge L62
	addi r1, NULL, 0
	rjmp L63
L62:
	addi r1, NULL, 1
L63:
	load[2] r4, NULL, VIDEO_PIXEL_HEIGHT
	cmp r2, r4
	brge L64
	addi r2, NULL, 0
	rjmp L65
L64:
	addi r2, NULL, 1
L65:
	or r1, r1, r2
	cmpi r1, 0
	breq L66
	addi RR, NULL, 0
	ret
	rjmp L67
L66:
L67:
	subi SP, SP, 2
	load[2] r0, BP, 8
	load[2] r1, NULL, VIDEO_PIXEL_WIDTH
	load[2] r2, BP, 10
	mul r1, r1, r2
	add r0, r0, r1
	push[2] BP
	push[2] r0
	load[4] r3, BP, 4
	push[2] r3
	store[2] BP, r0, -2
	subi SP, SP, 2
	call vga_write
	addi SP, SP, 6
	pop[2] BP
	addi RR, NULL, 1
	addi SP, SP, 2
	ret

palette_index_write:
	move BP, SP
	load[2] r0, BP, 2
	load[2] r1, BP, 4
	load[2] r2, BP, 6
	load[2] r3, NULL, PALETTE_SIZE
	cmp r0, r3
	brge L68
	addi r0, NULL, 0
	rjmp L69
L68:
	addi r0, NULL, 1
L69:
	cmpi r0, 0
	breq L70
	addi RR, NULL, 0
	ret
	rjmp L71
L70:
L71:
	subi SP, SP, 2
	addi r0, NULL, 1200
	load[2] r1, BP, 2
	add r0, r0, r1
	subi SP, SP, 2
	load[2] r2, BP, 4
	push[2] BP
	subi SP, SP, 2
	addi r3, NULL, 8
	push[2] r3
	load[2] r3, BP, 4
	push[2] r3
	store[2] BP, r0, -2
	store[2] BP, r2, -4
	subi SP, SP, 2
	call left_shift_i
	addi SP, SP, 8
	pop[2] BP
	move r0, RR
	store[2] BP, r0, -4
	load[2] r1, BP, 6
	add r0, r0, r1
	push[2] BP
	subi SP, SP, 2
	load[2] r2, BP, -2
	push[2] r2
	push[2] r0
	store[2] BP, r0, -4
	subi SP, SP, 2
	call vga_write
	addi SP, SP, 8
	pop[2] BP
	addi RR, NULL, 1
	addi SP, SP, 4
	ret

set_cursor:
	move BP, SP
	load[1] r0, BP, 2
	load[1] r1, BP, 3
	load[2] r2, NULL, VIDEO_TILE_WIDTH
	cmp r0, r2
	brge L72
	addi r0, NULL, 0
	rjmp L73
L72:
	addi r0, NULL, 1
L73:
	load[2] r3, NULL, VIDEO_TILE_HEIGHT
	cmp r1, r3
	brge L74
	addi r1, NULL, 0
	rjmp L75
L74:
	addi r1, NULL, 1
L75:
	or r0, r0, r1
	cmpi r0, 0
	breq L76
	addi RR, NULL, 0
	ret
	rjmp L77
L76:
L77:
	load[1] r0, BP, 2
	move r1, r0
	load[1] r2, BP, 3
	move r3, r2
	load[2] r4, NULL, VIDEO_TILE_WIDTH
	mul r2, r2, r4
	add r0, r0, r2
	store[2] NULL, r0, CURSOR
	store[2] NULL, r1, CURSOR_X
	store[2] NULL, r3, CURSOR_Y
	addi RR, NULL, 1
	ret

advance_cursor:
	move BP, SP
	load[2] r0, NULL, CURSOR
	addi r0, r0, 1
	store[2] NULL, r0, CURSOR
	load[2] r1, NULL, VIDEO_TILES
	cmp r0, r1
	brlt L78
	addi r0, NULL, 0
	rjmp L79
L78:
	addi r0, NULL, 1
L79:
	cmpi r0, 0
	breq L80
	load[2] r0, NULL, CURSOR_X
	addi r0, r0, 1
	store[2] NULL, r0, CURSOR_X
	load[2] r1, NULL, VIDEO_TILE_WIDTH
	cmp r0, r1
	brge L82
	addi r0, NULL, 0
	rjmp L83
L82:
	addi r0, NULL, 1
L83:
	cmpi r0, 0
	breq L84
	addi r0, NULL, 0
	load[2] r1, NULL, CURSOR_Y
	addi r1, r1, 1
	store[2] NULL, r0, CURSOR_X
	store[2] NULL, r1, CURSOR_Y
	rjmp L85
L84:
L85:
	rjmp L81
L80:
	addi r0, NULL, 0
	addi r1, NULL, 0
	addi r2, NULL, 0
	store[2] NULL, r0, CURSOR
	store[2] NULL, r1, CURSOR_X
	store[2] NULL, r2, CURSOR_Y
L81:
	move RR, NULL
	ret

back_cursor:
	move BP, SP
	load[2] r0, NULL, CURSOR
	cmpi r0, 0
	breq L86
	addi r0, NULL, 0
	rjmp L87
L86:
	addi r0, NULL, 1
L87:
	cmpi r0, 0
	breq L88
	addi RR, NULL, 0
	ret
	rjmp L89
L88:
L89:
	load[2] r0, NULL, CURSOR
	subi r0, r0, 1
	store[2] NULL, r0, CURSOR
	load[2] r1, NULL, VIDEO_TILES
	cmp r0, r1
	brlt L90
	addi r0, NULL, 0
	rjmp L91
L90:
	addi r0, NULL, 1
L91:
	cmpi r0, 0
	breq L92
	load[2] r0, NULL, CURSOR_X
	subi r0, r0, 1
	store[2] NULL, r0, CURSOR_X
	cmpi r0, 0
	brlt L94
	addi r0, NULL, 0
	rjmp L95
L94:
	addi r0, NULL, 1
L95:
	cmpi r0, 0
	breq L96
	addi r0, NULL, 0
	load[2] r1, NULL, CURSOR_Y
	subi r1, r1, 1
	store[2] NULL, r0, CURSOR_X
	store[2] NULL, r1, CURSOR_Y
	rjmp L97
L96:
L97:
	rjmp L93
L92:
	load[2] r0, NULL, VIDEO_TILES
	subi r0, r0, 1
	load[2] r1, NULL, VIDEO_TILE_WIDTH
	move r2, r1
	load[2] r3, NULL, VIDEO_TILE_HEIGHT
	move r4, r3
	store[2] NULL, r0, CURSOR
	store[2] NULL, r2, CURSOR_X
	store[2] NULL, r4, CURSOR_Y
L93:
	move RR, NULL
	ret

advance_steps:
	move BP, SP
	load[2] r0, BP, 2
	load[2] r1, NULL, VIDEO_TILES
	cmp r0, r1
	brge L98
	addi r0, NULL, 0
	rjmp L99
L98:
	addi r0, NULL, 1
L99:
	cmpi r0, 0
	breq L100
	addi RR, NULL, 0
	ret
	rjmp L101
L100:
L101:
	load[2] r0, NULL, CURSOR
	load[2] r1, BP, 2
	add r0, r0, r1
	store[2] NULL, r0, CURSOR
	load[2] r2, NULL, VIDEO_TILES
	cmp r0, r2
	brge L102
	addi r0, NULL, 0
	rjmp L103
L102:
	addi r0, NULL, 1
L103:
	cmpi r0, 0
	breq L104
	load[2] r0, NULL, CURSOR
	load[2] r1, NULL, VIDEO_TILES
	sub r0, r0, r1
	store[2] NULL, r0, CURSOR
	rjmp L105
L104:
L105:
	subi SP, SP, 4
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, VIDEO_TILE_WIDTH
	push[2] r0
	load[2] r1, NULL, CURSOR
	push[2] r1
	subi SP, SP, 2
	call divide
	addi SP, SP, 8
	pop[2] BP
	move r0, RR
	subi SP, SP, 4
	push[2] BP
	subi SP, SP, 2
	load[2] r1, NULL, VIDEO_TILE_HEIGHT
	push[2] r1
	load[2] r2, NULL, CURSOR
	push[2] r2
	store[4] BP, r0, -4
	subi SP, SP, 2
	call divide
	addi SP, SP, 8
	pop[2] BP
	move r0, RR
	push[2] BP
	subi SP, SP, 2
	addi r1, NULL, 16
	push[2] r1
	load[4] r1, BP, -4
	subi SP, SP, 2
	push[4] r1
	store[4] BP, r0, -8
	subi SP, SP, 2
	call right_shift_l
	addi SP, SP, 12
	pop[2] BP
	move r0, RR
	push[2] BP
	subi SP, SP, 2
	addi r1, NULL, 16
	push[2] r1
	load[4] r1, BP, -8
	subi SP, SP, 2
	push[4] r1
	store[2] NULL, r0, CURSOR_X
	subi SP, SP, 2
	call right_shift_l
	addi SP, SP, 12
	pop[2] BP
	move r0, RR
	store[2] NULL, r0, CURSOR_Y
	addi RR, NULL, 1
	addi SP, SP, 8
	ret

advance_line:
	move BP, SP
	load[2] r0, NULL, CURSOR_Y
	addi r0, r0, 1
	store[2] NULL, r0, CURSOR_Y
	load[2] r1, NULL, VIDEO_TILE_HEIGHT
	cmp r0, r1
	brlt L106
	addi r0, NULL, 0
	rjmp L107
L106:
	addi r0, NULL, 1
L107:
	cmpi r0, 0
	breq L108
	load[2] r0, NULL, VIDEO_TILE_WIDTH
	load[2] r1, NULL, CURSOR_Y
	mul r0, r0, r1
	load[2] r2, NULL, CURSOR_X
	add r0, r0, r2
	store[2] NULL, r0, CURSOR
	rjmp L109
L108:
	load[2] r0, NULL, CURSOR_X
	move r1, r0
	addi r2, NULL, 0
	store[2] NULL, r1, CURSOR
	store[2] NULL, r2, CURSOR_Y
L109:
	move RR, NULL
	ret

back_line:
	move BP, SP
	load[2] r0, NULL, CURSOR_Y
	subi r0, r0, 1
	store[2] NULL, r0, CURSOR_Y
	cmpi r0, 0
	brge L110
	addi r0, NULL, 0
	rjmp L111
L110:
	addi r0, NULL, 1
L111:
	cmpi r0, 0
	breq L112
	load[2] r0, NULL, VIDEO_TILE_WIDTH
	load[2] r1, NULL, CURSOR_Y
	mul r0, r0, r1
	load[2] r2, NULL, CURSOR_X
	add r0, r0, r2
	store[2] NULL, r0, CURSOR
	rjmp L113
L112:
	load[2] r0, NULL, CURSOR_X
	move r1, r0
	load[2] r2, NULL, VIDEO_TILE_HEIGHT
	subi r2, r2, 1
	store[2] NULL, r1, CURSOR
	store[2] NULL, r2, CURSOR_Y
L113:
	move RR, NULL
	ret

new_line:
	move BP, SP
	load[2] r0, NULL, CURSOR_Y
	addi r0, r0, 1
	store[2] NULL, r0, CURSOR_Y
	load[2] r1, NULL, VIDEO_TILE_HEIGHT
	cmp r0, r1
	brlt L114
	addi r0, NULL, 0
	rjmp L115
L114:
	addi r0, NULL, 1
L115:
	cmpi r0, 0
	breq L116
	load[2] r0, NULL, VIDEO_TILE_WIDTH
	load[2] r1, NULL, CURSOR_Y
	mul r0, r0, r1
	store[2] NULL, r0, CURSOR
	rjmp L117
L116:
	addi r0, NULL, 0
	addi r1, NULL, 0
	store[2] NULL, r0, CURSOR
	store[2] NULL, r1, CURSOR_Y
L117:
	addi r0, NULL, 0
	store[2] NULL, r0, CURSOR_X
	move RR, NULL
	ret

print_c_at:
	move BP, SP
	load[1] r0, BP, 5
	load[2] r1, BP, 6
	load[2] r2, NULL, FG_COLOR
	load[2] r3, NULL, PALETTE_SIZE
	cmp r2, r3
	brge L118
	addi r2, NULL, 0
	rjmp L119
L118:
	addi r2, NULL, 1
L119:
	load[2] r4, NULL, BG_COLOR
	cmp r4, r3
	brge L120
	addi r4, NULL, 0
	rjmp L121
L120:
	addi r4, NULL, 1
L121:
	or r2, r2, r4
	cmpi r2, 0
	breq L122
	addi RR, NULL, 0
	ret
	rjmp L123
L122:
L123:
	subi SP, SP, 2
	load[2] r0, NULL, FG_COLOR
	push[2] BP
	addi r1, NULL, 4
	push[2] r1
	push[2] r0
	store[2] BP, r0, -2
	subi SP, SP, 2
	call left_shift_i
	addi SP, SP, 6
	pop[2] BP
	move r0, RR
	store[2] BP, r0, -2
	load[2] r1, NULL, BG_COLOR
	add r0, r0, r1
	push[2] BP
	addi r2, NULL, 8
	push[2] r2
	push[2] r0
	store[2] BP, r0, -2
	subi SP, SP, 2
	call left_shift_i
	addi SP, SP, 6
	pop[2] BP
	move r0, RR
	subi SP, SP, 2
	load[1] r1, BP, 5
	store[2] BP, r1, -4
	add r1, r1, r0
	push[2] BP
	subi SP, SP, 2
	load[2] r2, BP, 6
	push[2] r2
	push[2] r1
	store[2] BP, r0, -2
	store[2] BP, r1, -4
	subi SP, SP, 2
	call tile_index_write
	addi SP, SP, 8
	pop[2] BP
	addi SP, SP, 4
	ret

print_c_at_pos:
	move BP, SP
	load[1] r0, BP, 3
	load[2] r1, BP, 4
	load[2] r2, BP, 6
	push[2] BP
	subi SP, SP, 2
	load[2] r3, NULL, VIDEO_TILE_WIDTH
	mul r3, r3, r2
	add r1, r1, r3
	push[2] r1
	push[1] r0
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	ret

print_c:
	move BP, SP
	load[1] r0, BP, 3
	push[2] BP
	subi SP, SP, 2
	load[2] r1, NULL, CURSOR
	push[2] r1
	push[1] r0
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	cmpi RR, 0
	breq L124
	push[2] BP
	call advance_cursor
	pop[2] BP
	addi RR, NULL, 1
	ret
	rjmp L125
L124:
L125:
	addi RR, NULL, 0
	ret

print:
	move BP, SP
	load[2] r0, BP, 2
L126:
	load[2] r0, BP, 2
	load[1] r0, r0, 0
	cmpi r0, 0
	breq L127
	push[2] BP
	subi SP, SP, 2
	load[2] r1, BP, 2
	load[1] r1, r1, 0
	push[1] r1
	subi SP, SP, 1
	call print_c
	addi SP, SP, 4
	pop[2] BP
	load[2] r0, BP, 2
	addi r0, r0, 1
	store[2] BP, r0, 2
	rjmp L126
L127:
	move RR, NULL
	ret

print_at:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
	subi SP, SP, 2
	store[2] BP, r0, -2
L128:
	load[2] r0, BP, 4
	load[1] r0, r0, 0
	cmpi r0, 0
	breq L129
	push[2] BP
	load[2] r1, BP, 6
	load[2] r2, BP, 4
	load[2] r3, BP, -2
	sub r2, r2, r3
	add r1, r1, r2
	push[2] r1
	load[2] r4, BP, 4
	load[1] r4, r4, 0
	push[1] r4
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 6
	pop[2] BP
	load[2] r0, BP, 4
	addi r0, r0, 1
	store[2] BP, r0, 4
	rjmp L128
L129:
	addi SP, SP, 2
	move RR, NULL
	ret

print_sprite:
	move BP, SP
	load[2] r0, BP, 4
	load[2] r1, BP, 6
	subi SP, SP, 2
	store[2] BP, r0, -2
L130:
	load[2] r0, BP, 4
	load[1] r0, r0, 0
	cmpi r0, 0
	breq L131
	load[2] r1, BP, 4
	load[1] r1, r1, 0
	cmpi r1, 10
	breq L132
	addi r1, NULL, 0
	rjmp L133
L132:
	addi r1, NULL, 1
L133:
	cmpi r1, 0
	breq L134
	load[2] r0, BP, 6
	load[2] r1, NULL, VIDEO_TILE_WIDTH
	add r0, r0, r1
	store[2] BP, r0, 6
	rjmp L135
L134:
L135:
	push[2] BP
	load[2] r0, BP, 6
	load[2] r1, BP, 4
	load[2] r2, BP, -2
	sub r1, r1, r2
	add r0, r0, r1
	push[2] r0
	load[2] r3, BP, 4
	load[1] r3, r3, 0
	push[1] r3
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 6
	pop[2] BP
	load[2] r0, BP, 4
	addi r0, r0, 1
	store[2] BP, r0, 4
	rjmp L130
L131:
	addi SP, SP, 2
	move RR, NULL
	ret

clear:
	move BP, SP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] BP
	addi r1, NULL, 0
	push[2] r1
	subi SP, SP, 2
	push[4] r0
	store[2] BP, r0, -2
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
L136:
	load[2] r0, BP, -2
	load[2] r1, NULL, VIDEO_TILES
	cmp r0, r1
	brlt L138
	addi r0, NULL, 0
	rjmp L139
L138:
	addi r0, NULL, 1
L139:
	cmpi r0, 0
	breq L137
	push[2] BP
	load[2] r2, BP, -2
	push[2] r2
	addi r3, NULL, 0
	push[2] r3
	subi SP, SP, 2
	call tile_index_write
	addi SP, SP, 6
	pop[2] BP
	load[2] r0, BP, -2
	addi r0, r0, 1
	store[2] BP, r0, -2
	rjmp L136
L137:
	addi r0, NULL, 0
	addi r1, NULL, 0
	addi r2, NULL, 0
	addi SP, SP, 2
	store[2] NULL, r0, CURSOR
	store[2] NULL, r1, CURSOR_X
	store[2] NULL, r2, CURSOR_Y
	move RR, NULL
	ret

load_basic_palette:
	move BP, SP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_BLACK
	push[2] r0
	load[2] r1, NULL, PURE_WHITE
	push[2] r1
	addi r2, NULL, 0
	push[2] r2
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, DARK_GRAY
	push[2] r0
	load[2] r1, NULL, LIGHT_GRAY
	push[2] r1
	addi r2, NULL, 1
	push[2] r2
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, LIGHT_GRAY
	push[2] r0
	load[2] r1, NULL, DARK_GRAY
	push[2] r1
	addi r2, NULL, 2
	push[2] r2
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_WHITE
	push[2] r0
	load[2] r1, NULL, PURE_BLACK
	push[2] r1
	addi r2, NULL, 3
	push[2] r2
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_RED
	push[2] r0
	push[2] r0
	addi r1, NULL, 4
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_ORANGE
	push[2] r0
	push[2] r0
	addi r1, NULL, 5
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_YELLOW
	push[2] r0
	push[2] r0
	addi r1, NULL, 6
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_LIME
	push[2] r0
	push[2] r0
	addi r1, NULL, 7
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_GREEN
	push[2] r0
	push[2] r0
	addi r1, NULL, 8
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_TEAL
	push[2] r0
	push[2] r0
	addi r1, NULL, 9
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_AZURE
	push[2] r0
	push[2] r0
	addi r1, NULL, 10
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_BLUE
	push[2] r0
	push[2] r0
	addi r1, NULL, 11
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_MARINE
	push[2] r0
	push[2] r0
	addi r1, NULL, 12
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_PURPLE
	push[2] r0
	push[2] r0
	addi r1, NULL, 13
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_PINK
	push[2] r0
	push[2] r0
	addi r1, NULL, 14
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 15
	push[2] r0
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	move RR, NULL
	ret

read_keyboard:
	move BP, SP
	subi SP, SP, 4
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	call in
	addi SP, SP, 4
	pop[2] BP
	move r0, RR
	subi SP, SP, 4
	addi r1, NULL, 4096
	and r1, r1, r0
	subi SP, SP, 4
	addi r2, NULL, 2048
	and r2, r2, r0
	push[2] BP
	subi SP, SP, 2
	addi r3, NULL, 1
	push[2] r3
	subi SP, SP, 2
	push[4] r1
	store[4] BP, r0, -4
	store[4] BP, r1, -8
	store[4] BP, r2, -12
	subi SP, SP, 2
	call right_shift_l
	addi SP, SP, 12
	pop[2] BP
	move r0, RR
	load[4] r1, BP, -12
	and r0, r0, r1
	cmpi r0, 0
	breq L140
	load[4] r0, BP, -4
	move RR, r0
	addi SP, SP, 12
	ret
	rjmp L141
L140:
L141:
	addi SP, SP, 12
	move RR, NULL
	ret

read_char:
	move BP, SP
	subi SP, SP, 4
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	call in
	addi SP, SP, 4
	pop[2] BP
	move r0, RR
	subi SP, SP, 4
	addi r1, NULL, 4096
	and r1, r1, r0
	subi SP, SP, 4
	addi r2, NULL, 2048
	and r2, r2, r0
	subi SP, SP, 4
	push[2] BP
	subi SP, SP, 2
	addi r3, NULL, 1
	push[2] r3
	subi SP, SP, 2
	push[4] r1
	store[4] BP, r0, -4
	store[4] BP, r1, -8
	store[4] BP, r2, -12
	subi SP, SP, 2
	call right_shift_l
	addi SP, SP, 12
	pop[2] BP
	move r0, RR
	subi SP, SP, 2
	addi r1, NULL, 0
	store[4] BP, r0, -16
	load[4] r2, BP, -12
	and r0, r0, r2
	store[2] BP, r1, -18
	cmpi r0, 0
	breq L142
	addi r0, NULL, 255
	load[4] r1, BP, -4
	and r0, r0, r1
	move RR, r0
	addi SP, SP, 18
	ret
	rjmp L143
L142:
L143:
	addi SP, SP, 18
	move RR, NULL
	ret

call_user_program:
	move BP, SP
	load[2] r0, BP, 2
	cmpi r0, 0
	breq L144
	addi r0, NULL, 0
	rjmp L145
L144:
	addi r0, NULL, 1
L145:
	cmpi r0, 0
	breq L146
	push[2] BP
	call ls
	pop[2] BP
	rjmp L147
L146:
	load[2] r0, BP, 2
	cmpi r0, 1
	breq L148
	addi r0, NULL, 0
	rjmp L149
L148:
	addi r0, NULL, 1
L149:
	cmpi r0, 0
	breq L150
	push[2] BP
	call pong
	pop[2] BP
	rjmp L151
L150:
	load[2] r0, BP, 2
	cmpi r0, 2
	breq L152
	addi r0, NULL, 0
	rjmp L153
L152:
	addi r0, NULL, 1
L153:
	cmpi r0, 0
	breq L154
	push[2] BP
	call snake_paint
	pop[2] BP
	rjmp L155
L154:
L155:
L151:
L147:
	move RR, NULL
	ret

ls:
	move BP, SP
	subi SP, SP, 2
	addi r0, NULL, 0
	subi SP, SP, 2
	addi r1, NULL, USER_PROGRAMS
	push[2] BP
	subi SP, SP, 2
	addi r2, NULL, 0
	push[2] r2
	load[2] r2, NULL, USER_PROGRAM_COUNT
	subi SP, SP, 2
	push[4] r2
	store[2] BP, r0, -2
	store[2] BP, r1, -4
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
L156:
	load[2] r0, BP, -2
	load[2] r1, NULL, USER_PROGRAM_COUNT
	cmp r0, r1
	brlt L158
	addi r0, NULL, 0
	rjmp L159
L158:
	addi r0, NULL, 1
L159:
	cmpi r0, 0
	breq L157
	subi SP, SP, 2
	push[2] BP
	load[2] r2, BP, -4
	push[2] r2
	call string_length
	addi SP, SP, 2
	pop[2] BP
	move r0, RR
	push[2] BP
	addi r1, NULL, 42
	push[1] r1
	store[2] BP, r0, -6
	subi SP, SP, 1
	call print_c
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	load[2] r0, BP, -4
	push[2] r0
	call print
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	call new_line
	addi SP, SP, 2
	pop[2] BP
	load[2] r0, BP, -4
	load[2] r1, BP, -6
	add r0, r0, r1
	addi r0, r0, 1
	load[2] r2, BP, -2
	addi r2, r2, 1
	addi SP, SP, 2
	store[2] BP, r0, -4
	store[2] BP, r2, -2
	rjmp L156
L157:
	push[2] BP
	call new_line
	pop[2] BP
	addi r0, NULL, 0
	push[1] r0
	addi r0, NULL, 46
	push[1] r0
	addi r0, NULL, 116
	push[1] r0
	addi r0, NULL, 105
	push[1] r0
	addi r0, NULL, 117
	push[1] r0
	addi r0, NULL, 113
	push[1] r0
	addi r0, NULL, 32
	push[1] r0
	addi r0, NULL, 111
	push[1] r0
	addi r0, NULL, 116
	push[1] r0
	addi r0, NULL, 32
	push[1] r0
	addi r0, NULL, 67
	push[1] r0
	addi r0, NULL, 83
	push[1] r0
	addi r0, NULL, 69
	push[1] r0
	addi r0, NULL, 32
	push[1] r0
	addi r0, NULL, 115
	push[1] r0
	addi r0, NULL, 115
	push[1] r0
	addi r0, NULL, 101
	push[1] r0
	addi r0, NULL, 114
	push[1] r0
	addi r0, NULL, 80
	push[1] r0
	subi SP, SP, 1
	push[2] BP
	subi SP, SP, 2
	addi r0, BP, -23
	push[2] r0
	call print
	addi SP, SP, 4
	pop[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	store[1] BP, r0, -26
L160:
	load[1] r0, BP, -26
	cmpi r0, 27
	brne L162
	addi r0, NULL, 0
	rjmp L163
L162:
	addi r0, NULL, 1
L163:
	cmpi r0, 0
	breq L161
	push[2] BP
	subi SP, SP, 2
	call read_char
	addi SP, SP, 2
	pop[2] BP
	move r0, RR
	store[1] BP, r0, -26
	rjmp L160
L161:
	addi SP, SP, 26
	move RR, NULL
	ret

pong:
	move BP, SP
	subi SP, SP, 2
	addi r0, NULL, 0
	subi SP, SP, 2
	addi r1, NULL, 8
	subi SP, SP, 2
	addi r2, NULL, 19
	push[2] BP
	load[2] r3, NULL, PURPLE_3
	push[2] r3
	push[2] r3
	addi r4, NULL, 0
	push[2] r4
	store[1] BP, r0, -2
	store[1] BP, r1, -4
	store[1] BP, r2, -6
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, PURPLE_1
	push[2] r0
	push[2] r0
	addi r1, NULL, 1
	push[2] r1
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, PURPLE_3
	push[2] r0
	load[2] r1, NULL, ATOM_PINK
	push[2] r1
	addi r2, NULL, 2
	push[2] r2
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, PURPLE_1
	push[2] r0
	load[2] r1, NULL, ATOM_PINK
	push[2] r1
	addi r2, NULL, 3
	push[2] r2
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, PURPLE_2
	push[2] r0
	push[2] r0
	addi r1, NULL, 4
	push[2] r1
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, ATOM_WHITE
	push[2] r0
	push[2] r0
	addi r1, NULL, 5
	push[2] r1
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, ATOM_GRAY
	addi r0, r0, 1
	push[2] r0
	load[2] r1, NULL, ATOM_PINK
	push[2] r1
	addi r2, NULL, 6
	push[2] r2
	call palette_index_write
	addi SP, SP, 6
	pop[2] BP
L164:
	subi SP, SP, 2
	addi r0, NULL, 1
	subi SP, SP, 2
	addi r1, NULL, 0
	subi SP, SP, 2
	addi r2, NULL, 0
	subi SP, SP, 2
	addi r3, NULL, 0
	subi SP, SP, 2
	addi r4, NULL, 19
	subi SP, SP, 2
	addi r5, NULL, 14
	subi SP, SP, 2
	addi r6, NULL, 0
	subi SP, SP, 2
	addi r7, NULL, 0
	subi SP, SP, 2
	addi r8, NULL, 1
	subi SP, SP, 2
	addi r9, NULL, 1
	subi SP, SP, 2
	addi r10, NULL, 2
	subi SP, SP, 2
	addi r11, NULL, 12
	subi SP, SP, 2
	addi RR, NULL, 37
	subi SP, SP, 2
	store[2] BP, r0, -8
	addi r0, NULL, 12
	subi SP, SP, 2
	store[2] BP, r1, -10
	addi r1, NULL, 0
	addi r1, NULL, 0
	store[2] BP, r0, -34
	store[2] BP, r1, -36
	store[2] BP, r2, -12
	store[1] BP, r3, -14
	store[2] BP, r4, -16
	store[2] BP, r5, -18
	store[2] BP, r6, -20
	store[2] BP, r7, -22
	store[2] BP, r8, -24
	store[2] BP, r9, -26
	store[2] BP, r10, -28
	store[2] BP, r11, -30
	store[2] BP, RR, -32
L166:
	load[2] r0, BP, -36
	cmpi r0, 1200
	brlt L168
	addi r0, NULL, 0
	rjmp L169
L168:
	addi r0, NULL, 1
L169:
	cmpi r0, 0
	breq L167
	addi r1, NULL, board
	load[2] r2, BP, -36
	addi r3, NULL, 1
	mul r3, r2, r3
	add r1, r1, r3
	load[1] r3, NULL, bg
	store[1] r1, r3, 0
	addi r2, r2, 1
	store[2] BP, r2, -36
	rjmp L166
L167:
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 4369
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	addi r0, NULL, 2
	store[2] BP, r0, -36
	load[2] r1, NULL, height
	load[2] r2, NULL, padding
	sub r1, r1, r2
	cmp r0, r1
	brlt L170
	addi r0, NULL, 0
	rjmp L171
L170:
	addi r0, NULL, 1
L171:
	cmpi r0, 0
	breq L172
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	load[2] r0, BP, -36
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	rjmp L173
L172:
L173:
L174:
	load[2] r0, BP, -36
	load[2] r1, NULL, height
	load[2] r2, NULL, padding
	sub r1, r1, r2
	cmp r0, r1
	brlt L176
	addi r0, NULL, 0
	rjmp L177
L176:
	addi r0, NULL, 1
L177:
	cmpi r0, 0
	breq L175
	addi r3, NULL, board
	load[2] r4, BP, -36
	load[2] r5, NULL, width
	mul r4, r4, r5
	addi r6, NULL, 1
	mul r6, r4, r6
	add r3, r3, r6
	load[1] r6, NULL, point_zone1
	store[1] r3, r6, 0
	addi r3, NULL, board
	load[2] r7, BP, -36
	mul r7, r7, r5
	addi r7, r7, 1
	addi r8, NULL, 1
	mul r8, r7, r8
	add r3, r3, r8
	store[1] r3, r6, 0
	addi r3, NULL, board
	load[2] r8, BP, -36
	mul r8, r8, r5
	subi r5, r5, 2
	add r8, r8, r5
	addi r9, NULL, 1
	mul r9, r8, r9
	add r3, r3, r9
	load[1] r9, NULL, point_zone2
	store[1] r3, r9, 0
	addi r3, NULL, board
	load[2] r10, BP, -36
	load[2] r11, NULL, width
	mul r10, r10, r11
	subi r11, r11, 1
	add r10, r10, r11
	addi RR, NULL, 1
	mul RR, r10, RR
	add r3, r3, RR
	store[1] r3, r9, 0
	load[2] r3, BP, -36
	addi r3, r3, 1
	store[2] BP, r3, -36
	rjmp L174
L175:
	addi r0, NULL, 0
	store[2] BP, r0, -36
L178:
	load[2] r0, BP, -36
	load[2] r1, NULL, width
	cmp r0, r1
	brlt L180
	addi r0, NULL, 0
	rjmp L181
L180:
	addi r0, NULL, 1
L181:
	cmpi r0, 0
	breq L179
	addi r2, NULL, board
	load[2] r3, BP, -36
	addi r4, NULL, 1
	mul r4, r3, r4
	add r2, r2, r4
	load[1] r4, NULL, wall
	store[1] r2, r4, 0
	addi r2, NULL, board
	add r1, r1, r3
	addi r5, NULL, 1
	mul r5, r1, r5
	add r2, r2, r5
	store[1] r2, r4, 0
	addi r2, NULL, board
	load[2] r5, NULL, height
	subi r5, r5, 2
	load[2] r6, NULL, width
	mul r5, r5, r6
	add r5, r5, r3
	addi r7, NULL, 1
	mul r7, r5, r7
	add r2, r2, r7
	store[1] r2, r4, 0
	addi r2, NULL, board
	load[2] r7, NULL, height
	subi r7, r7, 1
	mul r7, r7, r6
	add r7, r7, r3
	addi r8, NULL, 1
	mul r8, r7, r8
	add r2, r2, r8
	store[1] r2, r4, 0
	addi r3, r3, 1
	store[2] BP, r3, -36
	rjmp L178
L179:
	addi r0, NULL, board
	load[2] r1, NULL, score1_y
	load[2] r2, NULL, width
	mul r1, r1, r2
	load[2] r3, NULL, score1_x
	add r1, r1, r3
	addi r4, NULL, 1
	mul r4, r1, r4
	add r0, r0, r4
	load[1] r4, NULL, score1
	store[1] r0, r4, 0
	addi r0, NULL, board
	load[2] r5, NULL, score2_y
	mul r5, r5, r2
	load[2] r6, NULL, score2_x
	add r5, r5, r6
	addi r7, NULL, 1
	mul r7, r5, r7
	add r0, r0, r7
	load[1] r7, NULL, score2
	store[1] r0, r7, 0
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	movhi r0, r0, 0
	movlo r0, r0, 65278
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	addi r0, NULL, 0
	store[2] BP, r0, -36
	cmpi r0, 0
	breq L182
	addi r0, NULL, 0
	rjmp L183
L182:
	addi r0, NULL, 1
L183:
	cmpi r0, 0
	breq L184
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	load[2] r0, BP, -36
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	rjmp L185
L184:
L185:
L186:
	load[2] r0, BP, -36
	load[2] r1, NULL, p_height
	cmp r0, r1
	brlt L188
	addi r0, NULL, 0
	rjmp L189
L188:
	addi r0, NULL, 1
L189:
	cmpi r0, 0
	breq L187
	addi r2, NULL, board
	load[2] r3, BP, -30
	load[2] r4, BP, -36
	add r3, r3, r4
	load[2] r5, NULL, width
	mul r3, r3, r5
	load[2] r6, BP, -28
	add r3, r3, r6
	addi r7, NULL, 1
	mul r7, r3, r7
	add r2, r2, r7
	load[1] r7, NULL, p1
	store[1] r2, r7, 0
	addi r2, NULL, board
	load[2] r8, BP, -34
	add r8, r8, r4
	mul r8, r8, r5
	load[2] r9, BP, -32
	add r8, r8, r9
	addi r10, NULL, 1
	mul r10, r8, r10
	add r2, r2, r10
	load[1] r10, NULL, p2
	store[1] r2, r10, 0
	push[2] BP
	subi SP, SP, 2
	addi r2, NULL, 0
	push[2] r2
	addi r2, NULL, 2645
	subi SP, SP, 2
	push[4] r2
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	load[2] r0, BP, -36
	addi r0, r0, 1
	store[2] BP, r0, -36
	rjmp L186
L187:
	addi r0, NULL, board
	load[2] r1, BP, -18
	load[2] r2, NULL, width
	mul r1, r1, r2
	load[2] r3, BP, -16
	add r1, r1, r3
	addi r4, NULL, 1
	mul r4, r1, r4
	add r0, r0, r4
	load[1] r4, NULL, ball
	store[1] r0, r4, 0
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 15
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[1] r0, BP, -4
	subi r0, r0, 2
	push[1] r0
	load[1] r1, BP, -6
	subi r1, r1, 5
	push[1] r1
	call set_cursor
	addi SP, SP, 4
	pop[2] BP
	addi r0, NULL, 6
	addi r1, NULL, 6
	push[2] BP
	subi SP, SP, 2
	addi r2, NULL, starting
	push[2] r2
	store[2] NULL, r0, BG_COLOR
	store[2] NULL, r1, FG_COLOR
	call print
	addi SP, SP, 4
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 1500
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 8
	pop[2] BP
L190:
	load[2] r0, BP, -8
	cmpi r0, 1
	breq L192
	addi r0, NULL, 0
	rjmp L193
L192:
	addi r0, NULL, 1
L193:
	cmpi r0, 0
	breq L191
	push[2] BP
	call read_char
	pop[2] BP
	move r0, RR
	store[1] BP, r0, -2
	cmpi r0, 27
	breq L194
	addi r0, NULL, 0
	rjmp L195
L194:
	addi r0, NULL, 1
L195:
	cmpi r0, 0
	breq L196
	addi r0, NULL, 6
	addi r1, NULL, 6
	push[2] BP
	subi SP, SP, 2
	load[1] r2, BP, -4
	subi r2, r2, 2
	push[1] r2
	load[1] r3, BP, -6
	subi r3, r3, 3
	push[1] r3
	store[2] NULL, r0, BG_COLOR
	store[2] NULL, r1, FG_COLOR
	call set_cursor
	addi SP, SP, 4
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, goodbye
	push[2] r0
	call print
	addi SP, SP, 4
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 1000
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 8
	pop[2] BP
	addi RR, NULL, 0
	addi SP, SP, 36
	ret
	rjmp L197
L196:
L197:
	load[1] r0, BP, -2
	cmpi r0, 115
	breq L198
	addi r0, NULL, 0
	rjmp L199
L198:
	addi r0, NULL, 1
L199:
	cmpi r0, 0
	breq L200
	load[2] r0, BP, -30
	load[2] r1, NULL, height
	load[2] r2, NULL, p_height
	sub r1, r1, r2
	load[2] r3, NULL, padding
	sub r1, r1, r3
	cmp r0, r1
	brlt L202
	addi r0, NULL, 0
	rjmp L203
L202:
	addi r0, NULL, 1
L203:
	cmpi r0, 0
	breq L204
	load[2] r0, BP, -30
	addi r0, r0, 1
	addi r1, NULL, board
	store[2] BP, r0, -30
	subi r0, r0, 1
	load[2] r2, NULL, width
	mul r0, r0, r2
	load[2] r3, BP, -28
	add r0, r0, r3
	addi r4, NULL, 1
	mul r4, r0, r4
	add r1, r1, r4
	load[1] r4, NULL, bg
	store[1] r1, r4, 0
	addi r1, NULL, board
	load[2] r5, BP, -30
	load[2] r6, NULL, p_height
	subi r6, r6, 1
	add r5, r5, r6
	mul r5, r5, r2
	add r5, r5, r3
	addi r7, NULL, 1
	mul r7, r5, r7
	add r1, r1, r7
	load[1] r7, NULL, p1
	store[1] r1, r7, 0
	rjmp L205
L204:
L205:
	rjmp L201
L200:
	load[1] r0, BP, -2
	cmpi r0, 119
	breq L206
	addi r0, NULL, 0
	rjmp L207
L206:
	addi r0, NULL, 1
L207:
	cmpi r0, 0
	breq L208
	load[2] r0, BP, -30
	load[2] r1, NULL, padding
	cmp r0, r1
	brgt L210
	addi r0, NULL, 0
	rjmp L211
L210:
	addi r0, NULL, 1
L211:
	cmpi r0, 0
	breq L212
	load[2] r0, BP, -30
	subi r0, r0, 1
	addi r1, NULL, board
	store[2] BP, r0, -30
	load[2] r2, NULL, width
	mul r0, r0, r2
	load[2] r3, BP, -28
	add r0, r0, r3
	addi r4, NULL, 1
	mul r4, r0, r4
	add r1, r1, r4
	load[1] r4, NULL, p1
	store[1] r1, r4, 0
	addi r1, NULL, board
	load[2] r5, BP, -30
	load[2] r6, NULL, p_height
	add r5, r5, r6
	mul r5, r5, r2
	add r5, r5, r3
	addi r7, NULL, 1
	mul r7, r5, r7
	add r1, r1, r7
	load[1] r7, NULL, bg
	store[1] r1, r7, 0
	rjmp L213
L212:
L213:
	rjmp L209
L208:
L209:
L201:
	load[1] r0, BP, -2
	cmpi r0, 108
	breq L214
	addi r0, NULL, 0
	rjmp L215
L214:
	addi r0, NULL, 1
L215:
	cmpi r0, 0
	breq L216
	load[2] r0, BP, -34
	load[2] r1, NULL, height
	load[2] r2, NULL, p_height
	sub r1, r1, r2
	load[2] r3, NULL, padding
	sub r1, r1, r3
	cmp r0, r1
	brlt L218
	addi r0, NULL, 0
	rjmp L219
L218:
	addi r0, NULL, 1
L219:
	cmpi r0, 0
	breq L220
	load[2] r0, BP, -34
	addi r0, r0, 1
	addi r1, NULL, board
	store[2] BP, r0, -34
	subi r0, r0, 1
	load[2] r2, NULL, width
	mul r0, r0, r2
	load[2] r3, BP, -32
	add r0, r0, r3
	addi r4, NULL, 1
	mul r4, r0, r4
	add r1, r1, r4
	load[1] r4, NULL, bg
	store[1] r1, r4, 0
	addi r1, NULL, board
	load[2] r5, BP, -34
	load[2] r6, NULL, p_height
	subi r6, r6, 1
	add r5, r5, r6
	mul r5, r5, r2
	add r5, r5, r3
	addi r7, NULL, 1
	mul r7, r5, r7
	add r1, r1, r7
	load[1] r7, NULL, p2
	store[1] r1, r7, 0
	rjmp L221
L220:
L221:
	rjmp L217
L216:
	load[1] r0, BP, -2
	cmpi r0, 111
	breq L222
	addi r0, NULL, 0
	rjmp L223
L222:
	addi r0, NULL, 1
L223:
	cmpi r0, 0
	breq L224
	load[2] r0, BP, -34
	load[2] r1, NULL, padding
	cmp r0, r1
	brgt L226
	addi r0, NULL, 0
	rjmp L227
L226:
	addi r0, NULL, 1
L227:
	cmpi r0, 0
	breq L228
	load[2] r0, BP, -34
	subi r0, r0, 1
	addi r1, NULL, board
	store[2] BP, r0, -34
	load[2] r2, NULL, width
	mul r0, r0, r2
	load[2] r3, BP, -32
	add r0, r0, r3
	addi r4, NULL, 1
	mul r4, r0, r4
	add r1, r1, r4
	load[1] r4, NULL, p2
	store[1] r1, r4, 0
	addi r1, NULL, board
	load[2] r5, BP, -34
	load[2] r6, NULL, p_height
	add r5, r5, r6
	mul r5, r5, r2
	add r5, r5, r3
	addi r7, NULL, 1
	mul r7, r5, r7
	add r1, r1, r7
	load[1] r7, NULL, bg
	store[1] r1, r7, 0
	rjmp L229
L228:
L229:
	rjmp L225
L224:
L225:
L217:
	load[2] r0, BP, -16
	load[2] r1, BP, -24
	add r0, r0, r1
	load[2] r2, BP, -18
	load[2] r3, BP, -26
	add r2, r2, r3
	subi SP, SP, 2
	addi r4, NULL, board
	store[2] BP, r2, -22
	load[2] r5, NULL, width
	mul r2, r2, r5
	add r2, r2, r0
	add r2, r4, r2
	load[1] r2, r2, 0
	store[1] BP, r2, -38
	load[1] r6, NULL, wall
	cmp r2, r6
	breq L230
	addi r2, NULL, 0
	rjmp L231
L230:
	addi r2, NULL, 1
L231:
	store[2] BP, r0, -20
	cmpi r2, 0
	breq L232
	load[2] r0, BP, -26
	neg r0, r0
	load[2] r1, BP, -16
	load[2] r2, BP, -24
	add r1, r1, r2
	load[2] r3, BP, -18
	add r3, r3, r0
	store[2] BP, r0, -26
	store[2] BP, r1, -20
	store[2] BP, r3, -22
	rjmp L233
L232:
	load[1] r0, BP, -38
	load[1] r1, NULL, p1
	cmp r0, r1
	breq L234
	addi r0, NULL, 0
	rjmp L235
L234:
	addi r0, NULL, 1
L235:
	load[1] r2, BP, -38
	load[1] r3, NULL, p2
	cmp r2, r3
	breq L236
	addi r2, NULL, 0
	rjmp L237
L236:
	addi r2, NULL, 1
L237:
	or r0, r0, r2
	cmpi r0, 0
	breq L238
	load[2] r0, BP, -24
	neg r0, r0
	load[2] r1, BP, -16
	add r1, r1, r0
	load[2] r2, BP, -18
	load[2] r3, BP, -26
	add r2, r2, r3
	store[2] BP, r0, -24
	store[2] BP, r1, -20
	store[2] BP, r2, -22
	rjmp L239
L238:
	load[1] r0, BP, -38
	load[1] r1, NULL, point_zone1
	cmp r0, r1
	breq L240
	addi r0, NULL, 0
	rjmp L241
L240:
	addi r0, NULL, 1
L241:
	cmpi r0, 0
	breq L242
	load[2] r0, BP, -12
	addi r0, r0, 1
	addi r1, NULL, 19
	addi r2, NULL, 14
	addi r3, NULL, 1
	addi r4, NULL, 1
	addi r5, NULL, 6
	addi r6, NULL, 6
	push[2] BP
	load[1] r7, BP, -4
	subi r7, r7, 3
	push[1] r7
	load[1] r8, BP, -6
	addi r8, r8, 2
	push[1] r8
	store[2] BP, r0, -12
	store[2] BP, r1, -20
	store[2] BP, r2, -22
	store[2] BP, r3, -24
	store[2] BP, r4, -26
	store[2] NULL, r5, BG_COLOR
	store[2] NULL, r6, FG_COLOR
	call set_cursor
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, goal
	push[2] r0
	call print
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, 1000
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 6
	pop[2] BP
	rjmp L243
L242:
	load[1] r0, BP, -38
	load[1] r1, NULL, point_zone2
	cmp r0, r1
	breq L244
	addi r0, NULL, 0
	rjmp L245
L244:
	addi r0, NULL, 1
L245:
	cmpi r0, 0
	breq L246
	load[2] r0, BP, -10
	addi r0, r0, 1
	addi r1, NULL, 19
	addi r2, NULL, 14
	addi r3, NULL, -1
	addi r4, NULL, -1
	addi r5, NULL, 6
	addi r6, NULL, 6
	push[2] BP
	load[1] r7, BP, -4
	subi r7, r7, 3
	push[1] r7
	load[1] r8, BP, -6
	subi r8, r8, 10
	push[1] r8
	store[2] BP, r0, -10
	store[2] BP, r1, -20
	store[2] BP, r2, -22
	store[2] BP, r3, -24
	store[2] BP, r4, -26
	store[2] NULL, r5, BG_COLOR
	store[2] NULL, r6, FG_COLOR
	call set_cursor
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, goal
	push[2] r0
	call print
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, 1000
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 6
	pop[2] BP
	rjmp L247
L246:
L247:
L243:
L239:
L233:
	addi r0, NULL, board
	load[2] r1, BP, -18
	load[2] r2, NULL, width
	mul r1, r1, r2
	load[2] r3, BP, -16
	add r1, r1, r3
	addi r4, NULL, 1
	mul r4, r1, r4
	add r0, r0, r4
	load[1] r4, NULL, bg
	store[1] r0, r4, 0
	addi r0, NULL, board
	load[2] r5, BP, -22
	mul r5, r5, r2
	load[2] r6, BP, -20
	add r5, r5, r6
	addi r7, NULL, 1
	mul r7, r5, r7
	add r0, r0, r7
	load[1] r7, NULL, ball
	store[1] r0, r7, 0
	move r3, r6
	load[2] r0, BP, -22
	move r8, r0
	addi r9, NULL, 0
	subi SP, SP, 2
	addi r10, NULL, 0
	store[2] BP, r3, -16
	store[2] BP, r8, -18
	store[2] BP, r9, -36
	store[1] BP, r10, -40
L248:
	load[2] r0, BP, -36
	load[2] r1, NULL, width
	load[2] r2, NULL, height
	mul r1, r1, r2
	cmp r0, r1
	brlt L250
	addi r0, NULL, 0
	rjmp L251
L250:
	addi r0, NULL, 1
L251:
	cmpi r0, 0
	breq L249
	addi r3, NULL, board
	load[2] r4, BP, -36
	add r4, r3, r4
	load[1] r4, r4, 0
	store[1] BP, r4, -40
	load[1] r5, NULL, bg
	cmp r4, r5
	breq L252
	addi r4, NULL, 0
	rjmp L253
L252:
	addi r4, NULL, 1
L253:
	cmpi r4, 0
	breq L254
	addi r0, NULL, 0
	push[2] BP
	subi SP, SP, 2
	load[2] r1, BP, -36
	push[2] r1
	addi r2, NULL, 32
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L255
L254:
	load[1] r0, BP, -40
	load[1] r1, NULL, point_zone1
	cmp r0, r1
	breq L256
	addi r0, NULL, 0
	rjmp L257
L256:
	addi r0, NULL, 1
L257:
	cmpi r0, 0
	breq L258
	addi r0, NULL, 4
	push[2] BP
	subi SP, SP, 2
	load[2] r1, BP, -36
	push[2] r1
	addi r2, NULL, 32
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L259
L258:
	load[1] r0, BP, -40
	load[1] r1, NULL, point_zone2
	cmp r0, r1
	breq L260
	addi r0, NULL, 0
	rjmp L261
L260:
	addi r0, NULL, 1
L261:
	cmpi r0, 0
	breq L262
	addi r0, NULL, 4
	push[2] BP
	subi SP, SP, 2
	load[2] r1, BP, -36
	push[2] r1
	addi r2, NULL, 32
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L263
L262:
	load[1] r0, BP, -40
	load[1] r1, NULL, wall
	cmp r0, r1
	breq L264
	addi r0, NULL, 0
	rjmp L265
L264:
	addi r0, NULL, 1
L265:
	cmpi r0, 0
	breq L266
	addi r0, NULL, 1
	push[2] BP
	subi SP, SP, 2
	load[2] r1, BP, -36
	push[2] r1
	addi r2, NULL, 32
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L267
L266:
	load[1] r0, BP, -40
	load[1] r1, NULL, p1
	cmp r0, r1
	breq L268
	addi r0, NULL, 0
	rjmp L269
L268:
	addi r0, NULL, 1
L269:
	load[1] r2, BP, -40
	load[1] r3, NULL, p2
	cmp r2, r3
	breq L270
	addi r2, NULL, 0
	rjmp L271
L270:
	addi r2, NULL, 1
L271:
	or r0, r0, r2
	cmpi r0, 0
	breq L272
	addi r0, NULL, 5
	push[2] BP
	subi SP, SP, 2
	load[2] r1, BP, -36
	push[2] r1
	addi r2, NULL, 32
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L273
L272:
	load[1] r0, BP, -40
	load[1] r1, NULL, ball
	cmp r0, r1
	breq L274
	addi r0, NULL, 0
	rjmp L275
L274:
	addi r0, NULL, 1
L275:
	cmpi r0, 0
	breq L276
	addi r0, NULL, 2
	addi r1, NULL, 2
	push[2] BP
	subi SP, SP, 2
	load[2] r2, BP, -36
	push[2] r2
	addi r3, NULL, 64
	push[1] r3
	store[2] NULL, r0, FG_COLOR
	store[2] NULL, r1, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L277
L276:
	load[1] r0, BP, -40
	load[1] r1, NULL, score1
	cmp r0, r1
	breq L278
	addi r0, NULL, 0
	rjmp L279
L278:
	addi r0, NULL, 1
L279:
	cmpi r0, 0
	breq L280
	addi r0, NULL, 3
	addi r1, NULL, 3
	push[2] BP
	subi SP, SP, 2
	load[2] r2, BP, -36
	push[2] r2
	load[2] r3, BP, -10
	addi r3, r3, 48
	push[1] r3
	store[2] NULL, r0, FG_COLOR
	store[2] NULL, r1, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L281
L280:
	load[1] r0, BP, -40
	load[1] r1, NULL, score2
	cmp r0, r1
	breq L282
	addi r0, NULL, 0
	rjmp L283
L282:
	addi r0, NULL, 1
L283:
	cmpi r0, 0
	breq L284
	addi r0, NULL, 3
	addi r1, NULL, 3
	push[2] BP
	subi SP, SP, 2
	load[2] r2, BP, -36
	push[2] r2
	load[2] r3, BP, -12
	addi r3, r3, 48
	push[1] r3
	store[2] NULL, r0, FG_COLOR
	store[2] NULL, r1, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L285
L284:
L285:
L281:
L277:
L273:
L267:
L263:
L259:
L255:
	load[2] r0, BP, -36
	addi r0, r0, 1
	store[2] BP, r0, -36
	rjmp L248
L249:
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 255
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	load[2] r0, BP, -10
	load[2] r1, NULL, win_score
	cmp r0, r1
	brge L286
	addi r0, NULL, 0
	rjmp L287
L286:
	addi r0, NULL, 1
L287:
	cmpi r0, 0
	breq L288
	addi r0, NULL, 1
	addi r1, NULL, 0
	store[1] BP, r0, -14
	store[2] BP, r1, -8
	rjmp L289
L288:
	load[2] r0, BP, -12
	load[2] r1, NULL, win_score
	cmp r0, r1
	brge L290
	addi r0, NULL, 0
	rjmp L291
L290:
	addi r0, NULL, 1
L291:
	cmpi r0, 0
	breq L292
	addi r0, NULL, 2
	addi r1, NULL, 0
	store[1] BP, r0, -14
	store[2] BP, r1, -8
	rjmp L293
L292:
L293:
L289:
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 120
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 8
	pop[2] BP
	addi SP, SP, 4
	rjmp L190
L191:
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	load[1] r0, BP, -14
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	addi r0, NULL, player_won
	addi r0, r0, 7
	load[1] r1, BP, -14
	addi r1, r1, 48
	store[1] r0, r1, 0
	addi r0, NULL, 6
	addi r2, NULL, 6
	push[2] BP
	subi SP, SP, 2
	load[1] r3, BP, -4
	push[1] r3
	load[1] r4, BP, -6
	subi r4, r4, 4
	push[1] r4
	store[2] NULL, r0, BG_COLOR
	store[2] NULL, r2, FG_COLOR
	call set_cursor
	addi SP, SP, 4
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, player_won
	push[2] r0
	call print
	addi SP, SP, 4
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[1] r0, BP, -4
	addi r0, r0, 3
	push[1] r0
	load[1] r1, BP, -6
	subi r1, r1, 9
	push[1] r1
	call set_cursor
	addi SP, SP, 4
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, play_again
	push[2] r0
	call print
	addi SP, SP, 4
	pop[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	store[2] BP, r0, -38
	cmpi r0, 0
	breq L294
	addi r0, NULL, 0
	rjmp L295
L294:
	addi r0, NULL, 1
L295:
	cmpi r0, 0
	breq L296
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	load[2] r0, BP, -38
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	rjmp L297
L296:
L297:
L298:
	load[2] r0, BP, -38
	cmpi r0, 0
	breq L300
	addi r0, NULL, 0
	rjmp L301
L300:
	addi r0, NULL, 1
L301:
	cmpi r0, 0
	breq L299
	push[2] BP
	subi SP, SP, 2
	call read_char
	addi SP, SP, 2
	pop[2] BP
	move r0, RR
	push[2] BP
	addi r1, NULL, 0
	push[2] r1
	addi r1, NULL, board
	load[1] r2, r1, 0
	subi SP, SP, 2
	push[4] r2
	store[1] BP, r0, -2
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	load[1] r0, BP, -2
	cmpi r0, 10
	breq L302
	addi r0, NULL, 0
	rjmp L303
L302:
	addi r0, NULL, 1
L303:
	cmpi r0, 0
	breq L304
	addi r0, NULL, 1
	store[2] BP, r0, -38
	rjmp L305
L304:
	load[1] r0, BP, -2
	cmpi r0, 27
	breq L306
	addi r0, NULL, 0
	rjmp L307
L306:
	addi r0, NULL, 1
L307:
	cmpi r0, 0
	breq L308
	addi r0, NULL, 3
	addi r1, NULL, 3
	push[2] BP
	load[1] r2, BP, -4
	subi r2, r2, 2
	push[1] r2
	load[1] r3, BP, -6
	subi r3, r3, 3
	push[1] r3
	store[2] NULL, r0, BG_COLOR
	store[2] NULL, r1, FG_COLOR
	call set_cursor
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, goodbye
	push[2] r0
	call print
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, 1000
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	movhi r0, r0, 0
	movlo r0, r0, 61166
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	addi RR, NULL, 0
	addi SP, SP, 38
	ret
	rjmp L309
L308:
L309:
L305:
	rjmp L298
L299:
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	movhi r0, r0, 0
	movlo r0, r0, 65535
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	addi r0, NULL, 6
	addi r1, NULL, 6
	push[2] BP
	load[1] r2, BP, -4
	subi r2, r2, 2
	push[1] r2
	load[1] r3, BP, -6
	subi r3, r3, 4
	push[1] r3
	store[2] NULL, r0, BG_COLOR
	store[2] NULL, r1, FG_COLOR
	call set_cursor
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, remaking
	push[2] r0
	call print
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, 500
	push[4] r0
	subi SP, SP, 2
	call sleep_ms
	addi SP, SP, 6
	pop[2] BP
	addi SP, SP, 32
	rjmp L164
L165:
	addi RR, NULL, 0
	addi SP, SP, 6
	ret

snake_paint:
	move BP, SP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_RED
	push[2] r0
	push[2] r0
	addi r1, NULL, 1
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_ORANGE
	push[2] r0
	push[2] r0
	addi r1, NULL, 2
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_YELLOW
	push[2] r0
	push[2] r0
	addi r1, NULL, 3
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_LIME
	push[2] r0
	push[2] r0
	addi r1, NULL, 4
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_GREEN
	push[2] r0
	push[2] r0
	addi r1, NULL, 5
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_AZURE
	push[2] r0
	push[2] r0
	addi r1, NULL, 6
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_BLUE
	push[2] r0
	push[2] r0
	addi r1, NULL, 7
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_MARINE
	push[2] r0
	push[2] r0
	addi r1, NULL, 8
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_PURPLE
	push[2] r0
	push[2] r0
	addi r1, NULL, 9
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_PINK
	push[2] r0
	push[2] r0
	addi r1, NULL, 10
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_WHITE
	push[2] r0
	push[2] r0
	addi r1, NULL, 0
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, PURE_BLACK
	push[2] r0
	push[2] r0
	addi r1, NULL, 11
	push[2] r1
	call palette_index_write
	addi SP, SP, 8
	pop[2] BP
	addi r0, NULL, 11
	subi SP, SP, 4
	addi r1, NULL, 0
	store[2] NULL, r0, FG_COLOR
	store[4] BP, r1, -4
L310:
	push[2] BP
	call read_char
	pop[2] BP
	move r0, RR
	store[4] BP, r0, -4
	cmpi r0, 0
	breq L312
	load[4] r0, BP, -4
	cmpi r0, 119
	breq L314
	addi r0, NULL, 0
	rjmp L315
L314:
	addi r0, NULL, 1
L315:
	cmpi r0, 0
	breq L316
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 32
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	call back_line
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 43
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L317
L316:
	load[4] r0, BP, -4
	cmpi r0, 97
	breq L318
	addi r0, NULL, 0
	rjmp L319
L318:
	addi r0, NULL, 1
L319:
	cmpi r0, 0
	breq L320
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 32
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	call back_cursor
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 43
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L321
L320:
	load[4] r0, BP, -4
	cmpi r0, 115
	breq L322
	addi r0, NULL, 0
	rjmp L323
L322:
	addi r0, NULL, 1
L323:
	cmpi r0, 0
	breq L324
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 32
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	call advance_line
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 43
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L325
L324:
	load[4] r0, BP, -4
	cmpi r0, 100
	breq L326
	addi r0, NULL, 0
	rjmp L327
L326:
	addi r0, NULL, 1
L327:
	cmpi r0, 0
	breq L328
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 32
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	push[2] BP
	call advance_cursor
	pop[2] BP
	push[2] BP
	subi SP, SP, 2
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 43
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L329
L328:
	load[4] r0, BP, -4
	cmpi r0, 48
	brge L330
	addi r0, NULL, 0
	rjmp L331
L330:
	addi r0, NULL, 1
L331:
	load[4] r1, BP, -4
	cmpi r1, 57
	brle L332
	addi r1, NULL, 0
	rjmp L333
L332:
	addi r1, NULL, 1
L333:
	and r0, r0, r1
	cmpi r0, 0
	breq L334
	load[4] r0, BP, -4
	subi r0, r0, 47
	push[2] BP
	subi SP, SP, 2
	load[2] r1, NULL, CURSOR
	push[2] r1
	addi r2, NULL, 43
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L335
L334:
	load[4] r0, BP, -4
	cmpi r0, 10
	breq L336
	addi r0, NULL, 0
	rjmp L337
L336:
	addi r0, NULL, 1
L337:
	cmpi r0, 0
	breq L338
	addi r0, NULL, 0
	push[2] BP
	subi SP, SP, 2
	load[2] r1, NULL, CURSOR
	push[2] r1
	addi r2, NULL, 43
	push[1] r2
	store[2] NULL, r0, BG_COLOR
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 8
	pop[2] BP
	rjmp L339
L338:
	load[4] r0, BP, -4
	cmpi r0, 27
	breq L340
	addi r0, NULL, 0
	rjmp L341
L340:
	addi r0, NULL, 1
L341:
	cmpi r0, 0
	breq L342
	addi RR, NULL, 0
	addi SP, SP, 4
	ret
	rjmp L343
L342:
L343:
L339:
L335:
L329:
L325:
L321:
L317:
	rjmp L313
L312:
L313:
	rjmp L310
L311:
	addi SP, SP, 4
	move RR, NULL
	ret

main:
	move BP, SP
	push[2] BP
	subi SP, SP, 2
	addi r0, NULL, 0
	push[2] r0
	load[2] r0, NULL, USER_PROGRAM_COUNT
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 12
	pop[2] BP
	subi SP, SP, 40
	subi SP, SP, 2
	subi SP, SP, 2
	subi SP, SP, 2
	subi SP, SP, 2
	subi SP, SP, 2
	subi SP, SP, 2
	subi SP, SP, 2
L344:
	addi r0, NULL, 0
	addi r1, NULL, 0
	addi r2, NULL, 1
	push[2] BP
	addi r3, NULL, 0
	push[1] r3
	addi r3, NULL, 40
	subi SP, SP, 1
	push[2] r3
	addi r3, BP, -40
	push[2] r3
	store[2] BP, r0, -42
	store[2] BP, r1, -44
	store[2] BP, r2, -46
	call memset
	addi SP, SP, 6
	pop[2] BP
	push[2] BP
	addi r0, NULL, 62
	push[1] r0
	subi SP, SP, 1
	call print_c
	addi SP, SP, 2
	pop[2] BP
L346:
	load[2] r0, BP, -46
	cmpi r0, 0
	breq L347
	push[2] BP
	subi SP, SP, 2
	call read_char
	addi SP, SP, 2
	pop[2] BP
	move r0, RR
	store[2] BP, r0, -44
	cmpi r0, 0
	breq L348
	load[2] r0, BP, -44
	cmpi r0, 10
	breq L350
	addi r0, NULL, 0
	rjmp L351
L350:
	addi r0, NULL, 1
L351:
	cmpi r0, 0
	breq L352
	addi r0, BP, -40
	load[2] r1, BP, -42
	addi r2, NULL, 1
	mul r2, r1, r2
	add r0, r0, r2
	addi r2, NULL, 0
	store[1] r0, r2, 0
	addi r0, NULL, 0
	store[2] BP, r0, -46
	rjmp L353
L352:
	load[2] r0, BP, -44
	cmpi r0, 8
	breq L354
	addi r0, NULL, 0
	rjmp L355
L354:
	addi r0, NULL, 1
L355:
	cmpi r0, 0
	breq L356
	load[2] r0, BP, -42
	cmpi r0, 0
	brne L358
	addi r0, NULL, 0
	rjmp L359
L358:
	addi r0, NULL, 1
L359:
	cmpi r0, 0
	breq L360
	push[2] BP
	subi SP, SP, 2
	call back_cursor
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	load[2] r0, NULL, CURSOR
	push[2] r0
	addi r1, NULL, 0
	push[1] r1
	subi SP, SP, 3
	call print_c_at
	addi SP, SP, 6
	pop[2] BP
	load[2] r0, BP, -42
	subi r0, r0, 1
	addi r1, BP, -40
	addi r2, NULL, 1
	mul r2, r0, r2
	add r1, r1, r2
	addi r2, NULL, 0
	store[1] r1, r2, 0
	store[2] BP, r0, -42
	rjmp L361
L360:
L361:
	rjmp L357
L356:
	addi r0, BP, -40
	load[2] r1, BP, -42
	addi r2, NULL, 1
	mul r2, r1, r2
	add r0, r0, r2
	load[2] r2, BP, -44
	store[1] r0, r2, 0
	addi r1, r1, 1
	push[2] BP
	push[1] r2
	store[2] BP, r1, -42
	subi SP, SP, 1
	call print_c
	addi SP, SP, 2
	pop[2] BP
L357:
L353:
	rjmp L349
L348:
L349:
	rjmp L346
L347:
	push[2] BP
	subi SP, SP, 2
	call clear
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, BP, -40
	push[2] r0
	call string_length
	addi SP, SP, 2
	pop[2] BP
	move r0, RR
	cmpi r0, 0
	brne L362
	addi r0, NULL, 0
	rjmp L363
L362:
	addi r0, NULL, 1
L363:
	cmpi r0, 0
	breq L364
	addi r0, NULL, USER_PROGRAMS
	move r1, r0
	addi r2, NULL, 0
	addi r3, NULL, 1
	store[2] BP, r1, -48
	store[2] BP, r2, -50
	store[2] BP, r3, -52
L366:
	load[2] r0, BP, -50
	load[2] r1, NULL, USER_PROGRAM_COUNT
	cmp r0, r1
	brlt L368
	addi r0, NULL, 0
	rjmp L369
L368:
	addi r0, NULL, 1
L369:
	load[2] r2, BP, -52
	and r0, r0, r2
	cmpi r0, 0
	breq L367
	push[2] BP
	addi r3, NULL, 0
	push[2] r3
	addi r3, NULL, 15
	subi SP, SP, 2
	push[4] r3
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	push[2] BP
	load[2] r0, BP, -48
	push[2] r0
	addi r1, BP, -40
	push[2] r1
	subi SP, SP, 2
	call string_compare
	addi SP, SP, 6
	pop[2] BP
	move r0, RR
	cmpi r0, 0
	breq L370
	addi r0, NULL, 0
	rjmp L371
L370:
	addi r0, NULL, 1
L371:
	cmpi r0, 0
	breq L372
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 240
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	addi r0, NULL, 0
	store[2] BP, r0, -52
	rjmp L373
L372:
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 3840
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	push[2] BP
	load[2] r0, BP, -48
	push[2] r0
	call string_length
	addi SP, SP, 2
	pop[2] BP
	move r0, RR
	load[2] r1, BP, -48
	add r1, r1, r0
	addi r1, r1, 1
	load[2] r2, BP, -50
	addi r2, r2, 1
	store[2] BP, r0, -54
	store[2] BP, r1, -48
	store[2] BP, r2, -50
L373:
	rjmp L366
L367:
	load[2] r0, BP, -50
	load[2] r1, NULL, USER_PROGRAM_COUNT
	cmp r0, r1
	brne L374
	addi r0, NULL, 0
	rjmp L375
L374:
	addi r0, NULL, 1
L375:
	cmpi r0, 0
	breq L376
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	movhi r0, r0, 0
	movlo r0, r0, 61440
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	push[2] BP
	load[2] r0, BP, -50
	push[2] r0
	call call_user_program
	addi SP, SP, 2
	pop[2] BP
	rjmp L377
L376:
L377:
	push[2] BP
	subi SP, SP, 2
	call load_basic_palette
	addi SP, SP, 2
	pop[2] BP
	addi r0, NULL, 0
	addi r1, NULL, 0
	push[2] BP
	store[2] NULL, r0, FG_COLOR
	store[2] NULL, r1, BG_COLOR
	subi SP, SP, 2
	call clear
	addi SP, SP, 2
	pop[2] BP
	push[2] BP
	addi r0, NULL, 0
	push[2] r0
	addi r0, NULL, 2645
	subi SP, SP, 2
	push[4] r0
	subi SP, SP, 2
	call out
	addi SP, SP, 10
	pop[2] BP
	rjmp L365
L364:
L365:
	rjmp L344
L345:
	addi SP, SP, 54
	move RR, NULL
	ret

