#include <sourcemod>  

public void OnPluginStart()
{
	RegConsoleCmd("buyammo1",Command_Main);
	RegConsoleCmd("sm_menu",Command_Main);
}	

public Action Command_Main(int client,int b)
{
	Menus_ShowMain(client);
}

void Menus_ShowMain(int client)
{
	Menu menu = new Menu(Handler_MainMenu);
	menu.SetTitle(" - 【我为C狂】 - 你懂的..\n ");
	menu.AddItem("#0", "★ 武器皮肤[!ws]");
	menu.AddItem("#1", "★ 匕首皮肤[!knife]");	
	menu.AddItem("#2", "★ 手套皮肤[!glove]");
	menu.AddItem("#3", "★ 人物角色[!agent]");
	menu.AddItem("#4", "★ 印花定制[!sticker]");
	menu.AddItem("#5", "★ 跳舞表情[!dance]");
	menu.AddItem("#6", "★ 音乐盒、胸章、硬币[!misc]");
	
	menu.Display(client, MENU_TIME_FOREVER);
}

public int Handler_MainMenu(Menu menu, MenuAction action, int client, int itemNum)
{
	if (action == MenuAction_Select)
	{
		switch (itemNum)
		{
			case 0:FakeClientCommand(client, "sm_ws");
			case 1:FakeClientCommand(client, "sm_knife");
			case 2:FakeClientCommand(client, "sm_glove");
			case 3:FakeClientCommand(client, "sm_agents");
			case 4:FakeClientCommand(client, "sm_stickers");
			case 5:FakeClientCommand(client, "sm_dance");
			case 6:FakeClientCommand(client, "sm_misc");
		}
	}
}