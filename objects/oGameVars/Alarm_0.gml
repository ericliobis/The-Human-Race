/// @description Save
// You can write your code in this editor

if(file_exists(RECORDFILE))
{
	file_delete(RECORDFILE);
}

var file;

file = file_text_open_write(RECORDFILE);
file_text_write_real(file, records[0,0]);
file_text_writeln(file)
file_text_write_real(file, records[1,0]);
file_text_writeln(file)
file_text_write_real(file, records[2,0]);
file_text_writeln(file)
file_text_write_real(file, records[3,0]);
file_text_writeln(file)
file_text_write_real(file, records[0,1]);
file_text_writeln(file)
file_text_write_real(file, records[1,1]);
file_text_writeln(file)
file_text_write_real(file, records[2,1]);
file_text_writeln(file)
file_text_write_real(file, records[3,1]);
file_text_close(file);