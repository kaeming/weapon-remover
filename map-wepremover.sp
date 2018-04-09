public OnEntityCreated(entity, const String:classname[]) { 
    if(StrEqual(classname, "game_player_equip")) { 
        SDKHook(entity, SDKHook_Spawn, Hook_OnEntitySpawn); 
    } 
} 
public Action:Hook_OnEntitySpawn(entity) { 
    AcceptEntityInput(entity, "Kill"); 
    return Plugin_Handled; 
}  
