function graduatecheck(form)
{
   if(!form.ch.checked)
   {
      form.greg.disabled=true;
   	  form.yearofpass3.disabled=true;
      form.percentage3.disabled=true;
   }
   else
   {
   	  form.greg.disabled=false;
      form.yearofpass3.disabled=false;
      form.percentage3.disabled=false;
   }
   fillcourse(form);
}

function fillcourse(acadamic)
{
	acadamic.course.length=4;
	acadamic.course.options(0).text="BTech";
	acadamic.course.options(0).value="BTech";
	acadamic.course.options(1).text="BSc";
	acadamic.course.options(1).value="BSc";
	acadamic.course.options(2).text="MSc";
	acadamic.course.options(2).value="MSc";
	acadamic.course.options(3).text="MTech";
	acadamic.course.options(3).value="MTech";
	getdiscipline(acadamic);
}

function getdiscipline(acadamic)
{
    switch(acadamic.course.value) 
	{
	   case "BTech":
	        acadamic.discipline.length=6;
			acadamic.discipline.options(0).text="Electronics";
			acadamic.discipline.options(0).value="Electronics";
			acadamic.discipline.options(1).text="Electrical";
			acadamic.discipline.options(1).value="Electrical";
			acadamic.discipline.options(2).text="Mechanical";
			acadamic.discipline.options(2).value="Mechanical";
			acadamic.discipline.options(3).text="Computer Science";
			acadamic.discipline.options(3).value="Computer Science";
			acadamic.discipline.options(4).text="Information Technology";
			acadamic.discipline.options(4).value="Information Technology";
			acadamic.discipline.options(5).text="Instrumentation";
			acadamic.discipline.options(5).value="Instrumentation";
			
			
			break;
			
		case "BSc":
	        acadamic.discipline.length=3;
			acadamic.discipline.options(0).text="Electronics";
			acadamic.discipline.options(0).value="Electronics";
			acadamic.discipline.options(1).text="Mathematics";
			acadamic.discipline.options(1).value="Mathematics";
			acadamic.discipline.options(2).text="Computers";
			acadamic.discipline.options(2).value="Computers";
			
			
			
			
		case "MSc":
	        acadamic.discipline.length=3;
			acadamic.discipline.options(0).text="Electronics";
			acadamic.discipline.options(0).value="Electronics";
			acadamic.discipline.options(1).text="Mathematics";
			acadamic.discipline.options(1).value="Mathematics";
			acadamic.discipline.options(2).text="Computers";
			acadamic.discipline.options(2).value="Computers";
			
			
			break;
			
		case "MTech":
	        acadamic.discipline.length=8;
			acadamic.discipline.options(0).text="Power Electronics"; 
			acadamic.discipline.options(0).value="Power Electronics"; 
			acadamic.discipline.options(1).text="Electrical";
			acadamic.discipline.options(1).value="Electrical";
			acadamic.discipline.options(2).text="Mechanical";
			acadamic.discipline.options(2).value="Mechanical";
			acadamic.discipline.options(3).text="Computer Science";
			acadamic.discipline.options(3).value="Computer Science";
			acadamic.discipline.options(4).text="Information Technology";
			acadamic.discipline.options(4).value="Information Technology";
			acadamic.discipline.options(5).text="Instrumentation";
			acadamic.discipline.options(5).value="Instrumentation";	
			acadamic.discipline.options(6).text="Aeronotics";
			acadamic.discipline.options(6).value="Aeronotics";
			acadamic.discipline.options(7).text="Automobile";
			acadamic.discipline.options(7).value="Automobile";
			
			
			break;	
	}
}

function SetChecked(ch) {
   if(document.f.ch[0].checked){ 
    for( i=0 ; i<document.f.ch.length ; i++) {
		if (document.f.ch[i].name==ch) {
		document.f.ch[i].checked=true;
		}
	}}else{
	 for( i=0 ; i<document.f.ch.length ; i++) {
		if (document.f.ch[i].name==ch) {
		document.f.ch[i].checked=false; 
		}  	}}
}
function check1() {
var flag = false;
  for( i=1 ; i<document.f.ch.length ; i++) {
		if (document.f.ch[i].checked) {
		    document.f.ch[0].checked=true;
		    flag = true;
		    break;
		}
	}
  if(!flag){
	   document.f.ch[0].checked=false; 
	}
}