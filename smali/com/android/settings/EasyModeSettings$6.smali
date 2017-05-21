.class Lcom/android/settings/EasyModeSettings$6;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 338
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "easymode"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string v4, "easymode_from"

    const-string v5, "settings"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    const-string v4, "EasyModeSettings"

    const-string v5, "onClick 1_1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v3, "smart_scroll_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "smart_pause_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$6;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 369
    return-void
.end method
