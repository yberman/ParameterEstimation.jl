function ms=AMIGO_gen_obs_problem(y,inputs,par,iexp)
	n=y(:,1);
	e=y(:,2);
	s=y(:,3);
	m=y(:,4);
	p=y(:,5);
	muN    =par(1);
	muEE   =par(2);
	muLE   =par(3);
	muLL   =par(4);
	muM    =par(5);
	muP    =par(6);
	muPE   =par(7);
	muPL   =par(8);
	deltaNE=par(9);
	deltaEL=par(10);
	deltaLM=par(11);
	rhoE   =par(12);
	rhoP   =par(13);
 

switch iexp

case 1
Y1=n  ;
Y2=e  ;
Y3=s+m;
Y4=p  ;
ms(:,1)=Y1;ms(:,2)=Y2;ms(:,3)=Y3;ms(:,4)=Y4;
end

return