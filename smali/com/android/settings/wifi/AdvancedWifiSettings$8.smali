.class Lcom/android/settings/wifi/AdvancedWifiSettings$8;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1308
    if-nez p1, :cond_1

    .line 1338
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    return-void

    .line 1310
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1311
    check-cast p1, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->WifiInternetServiceCheckBoxChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_internet_service_check_warning"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$600(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1325
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$800(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1327
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
