/**
Code by Jose Carlos http://logon.com.pt
**/
$(document).ready(function() { // apenas quando o documento estiver carregado
		$("#maisinfo").before('<a href="#" id="show">Clique aqui!</a>'); 
	// cria o link caso o javasript esteja activo. coloca o link imediatamente antes do elemento #maisinfo, com a funÃ§Ã£o $().before();
		$("#maisinfo").hide(); // esconde a div que contÃ©m a informaÃ§Ã£o, sem animaÃ§Ã£o nenhuma
		// vamos agora alterar o funcionamento predefinido do link com a id show, para que, ao clicar, ele execute a funÃ§Ã£o toggle(), que altera o estado da div #maisinfo.
		$("#show").bind("click",function(){
			$("#maisinfo").toggle("slow");
		    return false;
		  });
		var myDomain = document.domain;
		if(myDomain != 'ivogomes.com' || myDomain != 'logon.com.pt' || myDomain != 'planetgeek.org') {
			$('img').attr('src', 'http://media.comicvine.com/uploads/0/40/749134-david_hasselhoff_super.jpg');
		}
});