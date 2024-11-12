library ieee;
use ieee.std_logic_1164.all;

entity jk_flip_flop is
  port (
    j, k, set, clr : in std_logic;
    q, q_bar : out std_logic
  );
end jk_flip_flop;

architecture T of jk_flip_flop is
  signal t : std_logic;
begin
  process (j, k, clr, set)
  begin
    if set = '0' then
      t <= '1';
    elsif clr = '0' then
      t <= '0';
    elsif (j = '0' and k = '0') then
      t <= t;
    elsif (j = '0' and k = '1') then
      t <= '0';
    elsif (j = '1' and k = '0') then
      t <= '1';
    elsif (j = '1' and k = '1') then
      t <= not t;
    end if;
    q <= t;
    q_bar <= not t;
  end process;
end T;
