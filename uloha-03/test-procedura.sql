begin
    -- choice 1-zeny,2-muzi, 3-obe
    DBMS_OUTPUT.PUT_LINE('Priklad 1 :');
    ret_family('Iason', 2);
    DBMS_OUTPUT.PUT_LINE('Priklad 2 :');
    ret_family('Iason', 1);
    DBMS_OUTPUT.PUT_LINE('Priklad 3 :');
    ret_family('Iason', 3);
    DBMS_OUTPUT.PUT_LINE('Priklad 4 :');
    ret_family('Zoran', 3);
    DBMS_OUTPUT.PUT_LINE('Priklad 5 :');
    ret_family('Celestyn', 3);
end;
