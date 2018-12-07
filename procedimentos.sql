-- sempre que um usuario excluir um plano familia, todos os seus familiares deixam de ter os privilegios premium

create procedure tiraPremium(codfamiliar1 char, char codfamiliar2,char codfamiliar3,chrar codfamiliar4,char codfamiliar5)
language sql
begin
	update USUARIO
	set NEW.premium = false
	where codu = codfamiliar1 or codu = codfamiliar2 or codu = codfamiliar3 or codu = codfamiliar4 or codu = codfamiliar5;
end;


create trigger atualizaPremium before delete on PLANO
for each row execute procedure tiraPremium(familiar1,familiar2,familiar3,familiar4,familiar5);
