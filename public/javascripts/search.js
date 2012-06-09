function buscar(name){
        var className = "usuario"
 	var elements = document.getElementsByClassName(className);
	for (var i=0;i<elements.length;i++){
		elements[i].style.display="none";
		if (elements[i].id.indexOf(name)!=-1)
			elements[i].style.display="";
	}
}
 
