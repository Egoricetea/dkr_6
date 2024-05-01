const
  max_elem = 5;
 
type
  elem_type = integer;
  
  elem = record
    info: elem_type;
    next, prev: byte;
  end;
  list = record
    elems: array[1..max_elem] of elem;
    first, last: byte;
  end;
 
var
  L: list;
  num: integer;
  x, y, z: byte;
 
procedure insert(var L: list; new_el: byte; cur: byte);
 
begin
  L.elems[new_el].next := L.elems[cur+1].next;
  L.elems[new_el].prev := L.elems[cur + 1].prev;
  L.elems[cur].next := L.elems[new_el].next;
  L.elems[cur].prev := L.elems[new_el].prev;
end;
 
procedure delete(var L: list; del: byte; cur: integer);
begin
  L.elems[cur].next := L.elems[del].next;
  L.elems[L.elems[del].next].prev := L.elems[del].prev;
  
end;
 
function is_present(var L: list; el: byte; cur: byte): boolean;
var
  i: boolean;
begin
  i := false;
  while ((not (i)) and (el <= L.elems[cur].prev)) do
  begin
    i := el = L.elems[cur].next;
  end;
  is_present := i;
end;
 
procedure cas;
 
begin
  writeln('Введите число от 1 до 4:');
  writeln('1 Ввод списка ');
  writeln('2 Удаление списка');
  writeln('3 Поиск списка');
  writeln('4 Выход из списка');
  while NUM <> 4 do
    while NUM <> 4 do
    begin
      readln(NUM);
      case NUM of
        1:
          begin
            readln(x, y);
            insert(l, y, z);
          end;
        2:
          begin
            readln(x, y);
            delete(l, x, y);
          end;
        3:
          begin
            readln(x, y);
            is_present(l, x, y);
          end;
        4:
          begin
            exit;
          end;
      end;
    end;
end;
 
begin
  cas;
end.