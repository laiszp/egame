package br.com.egame.infra;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.ResourceBundle;

import br.com.caelum.vraptor.Convert;
import br.com.caelum.vraptor.Converter;
import br.com.caelum.vraptor.ioc.ApplicationScoped;


@Convert(Calendar.class)
@ApplicationScoped  
public class CalendarConverter implements Converter<Calendar> {

	@Override
	public Calendar convert(String value, Class<? extends Calendar> arg1,
			ResourceBundle arg2) {
		try {
			 
			String dataEmTexto = value;
		    Calendar data = null;
		    
		    Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
		    data = Calendar.getInstance();
		    data.setTime(date);
		    
		    return data;
		    
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}  
  
    
  
}  
