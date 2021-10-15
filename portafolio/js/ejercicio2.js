var frac={
    n1:1,
    n2:4,
    d1:7,
    d2:3,
    suma:function(){
        numeradorS1=this.n1 * this.d2;
        numeradorS2=this.n2 * this.d1;
        numeradorSF=numeradorS1 + numeradorS2;
        denominadorS=this.d1 * this.d2;
        return 'el resultado de la suma es '+ numeradorSF + ' / ' + denominadorS;
    },
    resta:function(){
        numeradorR1=this.n1 * this.d2;
        numeradorR2=this.n2 * this.d1;
        numeradorRF=numeradorS1 - numeradorS2;
        denominadorR=this.d1 * this.d2;
        return 'el resultado de la resta es '+ numeradorRF + ' / ' + denominadorR;
    }}
    document.write(frac.suma());
    document.write(frac.resta());