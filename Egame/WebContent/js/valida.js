function validaCampos(form) {
	

	if (form.nomeEmpresa.value == "") {
		alert("Complete os campos obrigatórios");
		form.nomeEmpresa.focus();
		return false;
	}
	
	if(form.razaoSocial.value == ""){
		alert("Complete os campos obrigatórios");
		form.razaoSocial.focus();
		return false;
	}
	
	if(form.cnpj.value == ""){
		alert("Complete os campos obrigatórios");
		form.cnpj.focus();
		return false;
	}
	
	if(form.nomeResp.value == ""){
		alert("Complete os campos obrigatórios");
		form.nomeResp.focus();
		return false;
	}
	

	if(form.username.value == ""){
		alert("Complete os campos obrigatórios");
		form.username.focus();
		return false;
	}
	
	if(form.senha.value == ""){
		alert("Complete os campos obrigatórios");
		form.senha.focus();
		return false;
	}
	
	if(form.email.value == ""){
		alert("Complete os campos obrigatórios");
		form.email.focus();
		return false;
	}
	
	if(form.telefone.value == ""){
		alert("Complete os campos obrigatórios");
		form.telefone.focus();
		return false;
	}

	if(form.confirmacao.value != form.senha.value){
		alert("A confirmação de senha está incorreta.");
		form.confirmacao.focus();
		return false;
	}
	
	
	
	return true;
	
}

function validaCampoStatus(form){
	if(form.status.value == ""){
		alert("Favor selecionar um valor válido.");
		form.status.focus();
		return false;
	}
}

function MascaraCNPJ(cnpj){
	if(mascaraInteiro(cnpj)==false){
		event.returnValue = false;
	}	
	return formataCampo(cnpj, '00.000.000/0000-00', event);
}

//adiciona mascara de cep
function MascaraCep(cep){
	
		if(mascaraInteiro(cep)==false){
		event.returnValue = false;
	}	
	return formataCampo(cep, '00.000-000', event);
}

//adiciona mascara de data
function MascaraData(data){
	if(mascaraInteiro(data)==false){
		event.returnValue = false;
	}	
	return formataCampo(data, '00/00/0000', event);
}

//adiciona mascara ao telefone
function MascaraTelefone(tel){	
	if(mascaraInteiro(tel)==false){
		event.returnValue = false;
	}	
	return formataCampo(tel, '(00) 0000-0000', event);
}

//adiciona mascara ao telefone
function MascaraCelular(tel){	
	if(mascaraInteiro(tel)==false){
		event.returnValue = false;
	}	
	return formataCampo(tel, '(00) 0-0000-0000', event);
}



//adiciona mascara ao CPF
function MascaraCPF(cpf){
	if(mascaraInteiro(cpf)==false){
		event.returnValue = false;
	}	
	return formataCampo(cpf, '000.000.000-00', event);
}

//valida telefone
function ValidaTelefone(tel){
	exp = /\(\d{2}\)\ \d{4}\-\d{4}/
	if(!exp.test(tel.value)){
		alert('Numero de Telefone Invalido!');
		tel.focus();
	}
}

//valida CEP
function ValidaCep(cep){
	exp = /\d{2}\.\d{3}\-\d{3}/
	if(!exp.test(cep.value)){
		alert('Numero de Cep Invalido!');
		cep.focus();
	}
}

//valida data
function ValidaData(data){
	exp = /\d{2}\/\d{2}\/\d{4}/
	if(!exp.test(data.value))
		alert('Data Invalida!');			
}

//valida data passada se é menor que a data de hoje
function validaDataMaior(objData){
	
	var dataForm = (objData.value).split("/");
	var hoje = new Date();
	var dataInformada = new Date(dataForm[2], dataForm[1]-1, dataForm[0]);
	
	if ( hoje > dataInformada )
	{
		alert("Por favor, coloque uma data posterior à data de hoje.");
		objData.focus();
	}
}

//valida o CPF digitado
function ValidarCPF(Objcpf){
	var cpf = Objcpf.value;
	exp = /\.|\-/g
	cpf = cpf.toString().replace( exp, "" ); 
	var digitoDigitado = eval(cpf.charAt(9)+cpf.charAt(10));
	var soma1=0, soma2=0;
	var vlr =11;
	
	for(i=0;i<9;i++){
		soma1+=eval(cpf.charAt(i)*(vlr-1));
		soma2+=eval(cpf.charAt(i)*vlr);
		vlr--;
	}	
	soma1 = (((soma1*10)%11)==10 ? 0:((soma1*10)%11));
	soma2=(((soma2+(2*soma1))*10)%11);
	
	var digitoGerado=(soma1*10)+soma2;
	if(digitoGerado!=digitoDigitado){	
		alert('CPF Invalido!');
		Objcpf.focus();
	}
		
}

function valida_cpf(Objcpf){
	var cpf = Objcpf.value;
    var numeros, digitos, soma, i, resultado, digitos_iguais;
    digitos_iguais = 1;
    if (cpf.length < 11)
          return false;
    for (i = 0; i < cpf.length - 1; i++)
          if (cpf.charAt(i) != cpf.charAt(i + 1))
                {
                digitos_iguais = 0;
                break;
                }
    if (!digitos_iguais)
          {
          numeros = cpf.substring(0,9);
          digitos = cpf.substring(9);
          soma = 0;
          for (i = 10; i > 1; i--)
                soma += numeros.charAt(10 - i) * i;
          resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
          if (resultado != digitos.charAt(0))
                return false;
          numeros = cpf.substring(0,10);
          soma = 0;
          for (i = 11; i > 1; i--)
                soma += numeros.charAt(11 - i) * i;
          resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
          if (resultado != digitos.charAt(1)){
        	  alert('CPF Invalido!');
                return false;
          }
          return true;
          }
    else{
    	alert('CPF Invalido!');
    	return false;
    }
          
}
//valida numero inteiro com mascara
function mascaraInteiro(){
	if (event.keyCode < 48 || event.keyCode > 57){
		event.returnValue = false;
		return false;
	}
	return true;
}

//valida o CNPJ digitado
function ValidarCNPJ(ObjCnpj){
	var cnpj = ObjCnpj.value;
	var valida = new Array(6,5,4,3,2,9,8,7,6,5,4,3,2);
	var dig1= new Number;
	var dig2= new Number;
	
	exp = /\.|\-|\//g
	cnpj = cnpj.toString().replace( exp, "" ); 
	var digito = new Number(eval(cnpj.charAt(12)+cnpj.charAt(13)));
		
	for(i = 0; i<valida.length; i++){
		dig1 += (i>0? (cnpj.charAt(i-1)*valida[i]):0);	
		dig2 += cnpj.charAt(i)*valida[i];	
	}
	dig1 = (((dig1%11)<2)? 0:(11-(dig1%11)));
	dig2 = (((dig2%11)<2)? 0:(11-(dig2%11)));
	
	if(((dig1*10)+dig2) != digito){
		alert('CNPJ Invalido!');
		ObjCnpj.focus();
	}
		
}


function ValidaEmail(obj)
{
  
  var email = obj.value;
  if ((email.length != 0) && ((email.indexOf("@") < 1) || (email.indexOf('.') < 7)))
  {
    alert('Email incorreto');
	obj.focus();
  }
}


//formata de forma generica os campos
function formataCampo(campo, Mascara, evento) { 
	var boleanoMascara; 
	
	var Digitato = evento.keyCode;
	exp = /\-|\.|\/|\(|\)| /g
	campoSoNumeros = campo.value.toString().replace( exp, "" ); 
   
	var posicaoCampo = 0;	 
	var NovoValorCampo="";
	var TamanhoMascara = campoSoNumeros.length;; 
	
	if (Digitato != 8) { // backspace 
		for(i=0; i<= TamanhoMascara; i++) { 
			boleanoMascara  = ((Mascara.charAt(i) == "-") || (Mascara.charAt(i) == ".")
								|| (Mascara.charAt(i) == "/")) 
			boleanoMascara  = boleanoMascara || ((Mascara.charAt(i) == "(") 
								|| (Mascara.charAt(i) == ")") || (Mascara.charAt(i) == " ")) 
			if (boleanoMascara) { 
				NovoValorCampo += Mascara.charAt(i); 
				  TamanhoMascara++;
			}else { 
				NovoValorCampo += campoSoNumeros.charAt(posicaoCampo); 
				posicaoCampo++; 
			  }	   	 
		  }	 
		campo.value = NovoValorCampo;
		  return true; 
	}else { 
		return true; 
	}
}


function txtBoxFormat(strField, sMask, evtKeyPress) {
    var i, nCount, sValue, fldLen, mskLen,bolMask, sCod, nTecla;
   
    if(document.all) { // Internet Explorer
        nTecla = evtKeyPress.keyCode;
    }
    else if(document.layers) { // Nestcape
        nTecla = evtKeyPress.which;
    }
    else if(document.getElementById) { // FireFox
        nTecla = evtKeyPress.which;
    }
   
    if (nTecla != 8) {
   
    sValue = document.getElementById(strField).value;
   
    // Limpa todos os caracteres de formatação que
    // já estiverem no campo.
    sValue = sValue.toString().replace( "-", "" );
    sValue = sValue.toString().replace( "-", "" );
    sValue = sValue.toString().replace( ".", "" );
    sValue = sValue.toString().replace( ".", "" );
    sValue = sValue.toString().replace( "/", "" );
    sValue = sValue.toString().replace( "/", "" );
    sValue = sValue.toString().replace( "(", "" );
    sValue = sValue.toString().replace( "(", "" );
    sValue = sValue.toString().replace( ")", "" );
    sValue = sValue.toString().replace( ")", "" );
    sValue = sValue.toString().replace( " ", "" );
    sValue = sValue.toString().replace( " ", "" );
    sValue = sValue.toString().replace( ":", "" );
    fldLen = sValue.length;
    mskLen = sMask.length;
   
    i = 0;
    nCount = 0;
    sCod = "";
    mskLen = fldLen;
   
    while (i <= mskLen) {
    bolMask = ((sMask.charAt(i) == "-") || (sMask.charAt(i) == ".") || (sMask.charAt(i) == "/"))
    bolMask = bolMask || ((sMask.charAt(i) == "(") || (sMask.charAt(i) == ")") || (sMask.charAt(i) == " "))
    bolMask = bolMask || (sMask.charAt(i) == ":")
   
    if (bolMask) {
    sCod += sMask.charAt(i);
    mskLen++; }
    else {
    sCod += sValue.charAt(nCount);
    nCount++;
    }
   
    i++;
    }
   
    //objForm[strField].value = sCod;
    document.getElementById(strField).value = sCod;
   
    if (nTecla != 8) { // backspace
        if (sMask.charAt(i-1) == "9") { // apenas números...
            return ((nTecla > 47) && (nTecla < 58)); } // números de 0 a 9
        else { // qualquer caracter...
            return true;
        }
    }
    else {
        return true;
    }
    }
}

function validaCategorias(form){
	if(form.idsCategorias.value == ""){
		alert("Selecione pelo menos uma categoria.");
		return false;
	}
}



function selecionaTudo(valor){
	var i;
	 for (i=0; i<document.f1.elements.length; i++){ 
		  
	      if(document.f1.elements[i].type == "checkbox"){
	    	
	         document.f1.elements[i].checked = valor;
	      }
	 }
}

function montaListaProdutosSelecionados() {
	var nomeHidden = document.getElementById("idsProdutos");
	var listaId = new Array(10);
	var i;
	for (i=0; i<document.f1.elements.length; i++){ 
		  
	      if(document.f1.elements[i].type == "checkbox"){
	    	
	         if(document.f1.elements[i].checked){
	        	 alert("id" +document.f1.elements[i].value);
	        	 listaId[i] = document.f1.elements[i].value;
	         }
	      }
	 }
	document.getElementById(nomeHidden).value = listaId;
	alert("hidden: " +listaId);
	
}

function montaListaFornecedoresFavoritos() {
	var nomeHidden = document.getElementById("idsFornecedores");
	var listaId = new Array(10);
	var i;
	for (i=0; i<document.f1.elements.length; i++){ 
		  
	      if(document.f1.elements[i].type == "checkbox"){
	    	
	         if(document.f1.elements[i].checked){
	        	 alert("id: " +document.f1.elements[i].value);
	        	 listaId[i] = document.f1.elements[i].value;
	         }
	      }
	 }
	document.getElementById(nomeHidden).value = listaId;
	alert("hidden: " +listaId);
	
}

function validaRamos(){
	if(document.getElementById("idsRamos").value == ""){
		alert("Lista vazia - não existe campo para ser alterado");
		return false;
	}
	
	
}

function validaCategoria(){
	if(document.getElementById("idsCategorias").value == ""){
		alert("Lista vazia - não existe campo para ser alterado");
		return false;
	}
}

function validaCampoResponsavel(form){
	if(form.nomeResponsavel.value == ""){
		alert("Favor inserir um nome do responsável válido.");
		form.nomeResponsavel.focus();
		return false;
	}
}

function validaCampoTitulo(form){
	if(form.titulo.value == ""){
		alert("Favor inserir um título válido.");
		form.titulo.focus();
		return false;
	}
}

function validaCampoPeriodo(form){
	if(form.periodoDe.value == ""){
		alert("Favor inserir um período válido.");
		form.periodoDe.focus();
		return false;
	}
	if(form.periodoAte.value == ""){
		alert("Favor inserir um período válido.");
		form.periodoAte.focus();
		return false;
	}
}

$(function() {
    $( ".data" ).datepicker({dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true,
    	 dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'
    	            ],
    	        dayNamesMin: [
    	        'D','S','T','Q','Q','S','S','D'
    	        ],
    	        dayNamesShort: [
    	        'Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'
    	        ],
    	        monthNames: [  'Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro',
    	        'Outubro','Novembro','Dezembro'
    	        ],
    	        monthNamesShort: [
    	        'Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set',
    	        'Out','Nov','Dez'
    	        ],
    	        nextText: 'Próximo',
    	        prevText: 'Anterior',
    	});
});


function validaCamposResposta(form){
	
	alert("entrou");
	if(form.prazoEntrega.value == ""){
		alert("Favor inserir uma data para prazo de entrega.");
		form.prazoEntrega.focus();
		return false;
	}
	
	else if(form.prazoPagto.value == ""){
		alert("Favor inserir uma data para o prazo de pagamento.");
		form.prazoPagto.focus();
		return false;
	}
	
	else if(form.validade.value == ""){
		alert("Favor inserir uma data de validade da proposta.");
		form.validade.focus();
		return false;
	}
	
	else{
		form.submit();
		return true;
	}

}

function CalculaIdade(objDataNascimento, form){
	
	var dataNascimento = objDataNascimento.value;
   	var array_data = dataNascimento.split("/");
   	if (array_data.length!=3) 
      	 return false;

   	//comprovo que o ano, mes, dia são corretos 
   	var ano;
   	ano = parseInt(array_data[2]); 
   	if (isNaN(ano)) 
      	 return false;

   	var mes;
   	mes = parseInt(array_data[1]); 
   	if (isNaN(mes)) 
      	 return false;

   	var dia;
   	dia = parseInt(array_data[0]);	
   	if (isNaN(dia)) 
      	 return false;

   	//se o ano da data que recebo so tem 2 cifras temos que muda-lo a 4 
   	if (ano<=99) 
      	 ano +=1900;
   	
   	var hoje = new Date();
    var idade = hoje.getFullYear() - ano;
    if (hoje.getMonth() + 1 < mes || (hoje.getMonth() + 1 == mes && hoje.getDate() < dia)) {
        idade--;
    }
    form.idade.value = idade;
}


function CalculaPermanencia(objDataInclusao, form){
	
	var dataInclusao = objDataInclusao.value;
   	var array_data = dataInclusao.split("/");
   	if (array_data.length!=3) 
      	 return false;

   	//comprovo que o ano, mes, dia são corretos 
   	var ano;
   	ano = parseInt(array_data[2]); 
   	if (isNaN(ano)) 
      	 return false;

   	var mes;
   	mes = parseInt(array_data[1]); 
   	if (isNaN(mes)) 
      	 return false;

   	var dia;
   	dia = parseInt(array_data[0]);	
   	if (isNaN(dia)) 
      	 return false;

   	//se o ano da data que recebo so tem 2 cifras temos que muda-lo a 4 
   	if (ano<=99) 
      	 ano +=1900;
   	
   	var hoje = new Date();
    var idade = hoje.getFullYear() - ano;
    if (hoje.getMonth() + 1 < mes || (hoje.getMonth() + 1 == mes && hoje.getDate() < dia)) {
        idade--;
    }
    form.permanencia.value = idade +" anos";
}

function BlockKeybord(){
	if(window.event){ // IE
		if((event.keyCode < 48) || (event.keyCode > 57)){
			event.returnValue = false;
		}
	}
	else if(e.which){ // Netscape/Firefox/Opera
		if((event.which < 48) || (event.which > 57)){
			event.returnValue = false;
		}
	}
}
function troca(str,strsai,strentra){
	while(str.indexOf(strsai)>-1){
		str = str.replace(strsai,strentra);
	}
	return str;
}

function FormataMoeda(campo,tammax,teclapres,caracter){
	if(teclapres == null || teclapres == "undefined"){
		var tecla = -1;
	}
	else{
		var tecla = teclapres.keyCode;
	}

	if(caracter == null || caracter == "undefined"){
		caracter = "";
	}

	vr = campo.value;
	if(caracter != ""){
		vr = troca(vr,caracter,"");
	}
	vr = troca(vr,"/","");
	vr = troca(vr,".","");
	vr = troca(vr,".","");

	tam = vr.length;
	if(tecla > 0){
		if(tam < tammax && tecla != 8){
			tam = vr.length + 1;
		}
		if(tecla == 8){
			tam = tam - 1;
		}
	}
	if(tecla == -1 || tecla == 8 || tecla >= 48 && tecla <= 57 || tecla >= 96 && tecla <= 105){
		if(tam <= 2){
			campo.value = vr;
		}
		if((tam > 2) && (tam <= 5)){
			campo.value = vr.substr(0, tam - 2) + '.' + vr.substr(tam - 2, tam);
		}
		if((tam >= 6) && (tam <= 8)){
			campo.value = vr.substr(0, tam - 5) + caracter + vr.substr(tam - 5, 3) + '.' + vr.substr(tam - 2, tam);
		}
		if((tam >= 9) && (tam <= 11)){
			campo.value = vr.substr(0, tam - 8) + caracter + vr.substr(tam - 8, 3) + caracter + vr.substr(tam - 5, 3) + '.' + vr.substr(tam - 2, tam);
		}
		if((tam >= 12) && (tam <= 14)){
			campo.value = vr.substr(0, tam - 11) + caracter + vr.substr(tam - 11, 3) + caracter + vr.substr(tam - 8, 3) + caracter + vr.substr(tam - 5, 3) + '.' + vr.substr(tam - 2, tam);
		}
		if((tam >= 15) && (tam <= 17)){
			campo.value = vr.substr(0, tam - 14) + caracter + vr.substr(tam - 14, 3) + caracter + vr.substr(tam - 11, 3) + caracter + vr.substr(tam - 8, 3) + caracter + vr.substr(tam - 5, 3) + '.' + vr.substr(tam - 2, tam);
		}
	}
}

function maskKeyPress(objEvent){
	var iKeyCode;
	if(window.event){ // IE
		iKeyCode = objEvent.keyCode;
		if(iKeyCode>=48 && iKeyCode<=57) return true;
		return false;
	}
	else if(e.which){ // Netscape/Firefox/Opera
		iKeyCode = objEvent.which;
		if(iKeyCode>=48 && iKeyCode<=57) return true;
		return false;
	}
}

