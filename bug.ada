```ada
function Add_One (X : Integer) return Integer is
begin
  return X + 1;
end Add_One;

procedure Example is
   Result : Integer;
begin
   Result := Add_One(5); -- Correct usage
   Ada.Text_IO.Put_Line(Integer'Image(Result));

   Result := Add_One(others => 5); -- Incorrect usage, raises exception
   Ada.Text_IO.Put_Line(Integer'Image(Result));
   -- Add exception handling here
exception
   when others =>
      Ada.Text_IO.Put_Line("Exception occurred");
end Example;
```