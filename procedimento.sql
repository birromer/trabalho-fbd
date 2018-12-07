-- sempre que um usuario excluir um plano familia, todos os seus familiares deixam de ter os privilegios premium
CREATE OR REPLACE FUNCTION tiraPremiumFamilia()
RETURNS TRIGGER AS $$
BEGIN
	IF(OLD.tipoPlano = 'f')
	THEN
		UPDATE USUARIO SET premium = 'f'
		WHERE codu = OLD.familiar1 or codu = OLD.familiar2 or codu = OLD.familiar3 or codu = OLD.familiar4 or codu = OLD.familiar5;
		RETURN OLD;
	END IF;
	UPDATE USUARIO SET premium = 'f'
	WHERE codu = OLD.usuario;
	RETURN OLD;

	RETURN NULL;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER atualizaPremium
BEFORE DELETE ON PLANO
FOR EACH ROW 
EXECUTE PROCEDURE tiraPremiumFamilia();

