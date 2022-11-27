medicamentos_provocan(congestion_hepatica). 
medicamentos_provocan(congestion_renal).
medicamentos_provocan(fatiga). 
medicamentos_provocan(adiccion). 
medicamentos_provocan(alergias).

plantas_contienen(vitaminas).
plantas_contienen(hormonas).
plantas_contienen(minerales).
plantas_contienen(metaloides).
plantas_contienen(proteinas).
plantas_contienen(enzimas).
plantas_contienen(alcaloides).

planta(linaza).
planta(llantén).
planta(madre_selva).
planta(maguey).
planta(maíz).

problema(absesos).
problema(flebitis).
problema(estreñimiento).
problema(colitis).
problema(males_Estomacales).
problema(bronquitis).
problema(hemorroides).
problema(úlceras).
problema(malestar_Ojos).
problema(malestar_Oidos).
problema(inflaciones_bucales).
problema(gripes).
problema(resfriados).
problema(digestion).
problema(tos).
problema(tuberculosis).
problema(reumatismo).
problema(riñon_inflamado).
problema(gonorrea).
problema(tumores_internos).
problema(golpes).
problema(ciática).
problema(nefritis).
problema(gota).
problema(hinchazon_piernas).
problema(calculos_biliares).
problema(calculos_renales).

elimina(linaza,absesos).
elimina(linaza,flebitis).
elimina(linaza,males_Estomacales).
elimina(linaza,bronquitis).
elimina(linaza,hemorroides).
elimina(linaza,estreñimiento).
elimina(linaza,colitis).
elimina(llantén,úlceras).
elimina(llantén,malestar_Ojos).
elimina(llantén,malestar_Oidos).
elimina(madre_selva,inflaciones_bucales).
elimina(madre_selva,gripes).
elimina(madre_selva,resfriados).
elimina(madre_selva,digestion).
elimina(maguey,tuberculosis).
elimina(maguey,tos).
elimina(maguey,riñon_inflamado).
elimina(maguey,gonorrea).
elimina(maguey,tumores_internos).
elimina(maguey,golpes).
elimina(maguey,reumatismo).
elimina(maíz,ciática).
elimina(maíz,nefritis).
elimina(maíz,gota).
elimina(maíz,hinchazon_piernas).
elimina(maíz,calculos_biliares).
elimina(maíz,calculos_renales).

modo(interno).
modo(externo).

modo_aplicacion(absenos,externo).
modo_aplicacion(flebitis,externo).
modo_aplicacion(males_Estomacales,interno).
modo_aplicacion(bronquitis,interno).
modo_aplicacion(hemorroides,interno).
modo_aplicacion(estreñimiento,interno).
modo_aplicacion(colitis,interno).
modo_aplicacion(úlceras,interno).
modo_aplicacion(malestar_Oidos,interno).
modo_aplicacion(malestar_Ojos,externo).
modo_aplicacion(inflamaciones_bucales,interno).
modo_aplicacion(gripes,interno).
modo_aplicacion(resfriados,interno).
modo_aplicacion(digestion,interno).
modo_aplicacion(tos,interno).
modo_aplicacion(tuberculosis,interno).
modo_aplicacion(riñon_inflamado,interno).
modo_aplicacion(gonorrea,interno).
modo_aplicacion(tumores_internos,interno).
modo_aplicacion(reumatismo,externo).
modo_aplicacion(golpes,externo).
modo_aplicacion(calculos_biliares,interno).
modo_aplicacion(calculos_renales,interno).
modo_aplicacion(hinchazon_piernas,interno).
modo_aplicacion(gota,interno).
modo_aplicacion(nefritis,interno).
modo_aplicacion(ciática,externo).


uso(cataplasma,absenos).
uso(cataplasma,flebitis).
uso(cataplasma,ciática).
uso(agua,males_Estomacales).
uso(agua,bronquitis).
uso(agua,hemorroides).
uso(agua,extreñimiento).
uso(agua,colitis).
uso(té,malestar_Oidos).
uso(té,úlceras).
uso(té,inflamaciones_bucales).
uso(té,gripes).
uso(té,resfriados).
uso(té,digestion).
uso(té,calculos_biliares).
uso(té,calculos_renales).
uso(té,hinchazon_piernas).
uso(té,gota).
uso(té,nefritis).
uso(asado,reumatismo).
uso(asado,golpes).
uso(jugo,tos).
uso(jugo,tuberculosis).
uso(jugo,riñon_inflamado).
uso(jugo,gonorrea).
uso(jugo,tumores_internos).
uso(leche,malestar_Ojos).

aplicacion(absenos,externo,cataplasma).
aplicacion(flebitis,externo,cataplasma).
aplicacion(males_Estomacales,interno,té).
aplicacion(bronquitis,interno,té).
aplicacion(hemorroides,interno,té).
aplicacion(estreñimiento,interno,té).
aplicacion(colitis, interno, té).
aplicacion(malestar_Ojos,externo,leche).
aplicacion(malestar_Oidos,interno,té).
aplicacion(úlceras,interno,té).
aplicacion(inflamaciones_bucales,interno,té).
aplicacion(gripes,interno,té).
aplicacion(resfriados,interno,té).
aplicacion(digestion,interno,té).
aplicacion(tos,interno,jugo).
aplicacion(tuberculosis,interno,jugo).
aplicacion(riñon_inflamado,interno,jugo).
aplicacion(gonorrea,interno,jugo).
aplicacion(tumores,interno,jugo).
aplicacion(reumatismo,externo,asado).
aplicacion(golpes,externo,asado).
aplicacion(calculos_biliares,interno,té).
aplicacion(calculos_renales,interno,té).
aplicacion(hinchazon_piernas,interno,té).
aplicacion(gota,interno,té).
aplicacion(nefritis,interno,té).
aplicacion(ciática,externo,cataplasma).

recetar(A,X,Y,Z):-elimina(X,A),aplicacion(A,Y,Z).

alivia(X,Z):-elimina(Z,X).

es_interno(X):-modo_aplicacion(X,interno).
es_externo(X):-modo_aplicacion(X,externo).

usar(X,Z):-uso(Z,X).

cataplasma(X):-uso(cataplasma,X).
té(X):-uso(té,X).
asado(X):-uso(asado,X).
agua(X):-uso(agua,X).
jugo(X):-uso(jugo,X).
leche(X):-uso(leche,X).

ingerir(X,Z,Y):-elimina(X,Z),modo_aplicacion(Z,Y).






