/// @description  Disparo la creación de IAs en mapa anterior

for (var i = 0; i < totalMultiIA; i++) {
    IAAuxiliar = globalIA[i];
    if (IAAuxiliar[0] != -1 && IAAuxiliar[40] == room) {
        IAAuxiliar[43] = true;
    }    
    globalIA[i] = IAAuxiliar;
}

crea = false;
crearIADelMundo();

