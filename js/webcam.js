
//run function after the window fully loaded


window.addEventListener("load",windowLoad,false);


  	function windowLoad(e){
	for(var i=0; i<8; i++) {
	var fadeup = document.querySelectorAll("images");
	fadeup.classList.add("gangsta");
	}

}