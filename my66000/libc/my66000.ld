OUTPUT_FORMAT ("elf64-my66000", "elf64-my66000", "elf64-my66000")
ENTRY(_start)

MEMORY
{
  ram (rwx) : ORIGIN = 0x00000000, LENGTH = 512K
}

SECTIONS
{
    .text :
    {
	*(.text*)
        . = ALIGN (8);
        _etext = .;
    } > ram
    .rodata :
    {
	*(.rodata*)
        . = ALIGN (8);
    }
    .data :
    {
	_data = .;
	*(.data*)
	. = ALIGN (8);
	_edata = .;
    } >ram
    .bss :
    {
	_bss = .;
	*(.bss*)
	. = ALIGN (8);
	_end = .;
    } >ram
}

