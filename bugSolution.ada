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

   begin
      Result := Add_One(others => 5); -- Incorrect usage, handled below
      Ada.Text_IO.Put_Line(Integer'Image(Result));
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Constraint_Error occurred: Incorrect parameter association.");
   end;
   
end Example;
```