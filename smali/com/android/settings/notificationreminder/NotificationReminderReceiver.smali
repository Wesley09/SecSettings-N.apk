.class public Lcom/android/settings/notificationreminder/NotificationReminderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReminderReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TIME_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string v0, "NotificationReminderReceiver"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderReceiver;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "time_key"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderReceiver;->TIME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string v7, "NotificationReminderReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[c] NotificationReminderReceiver:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "NOTIFICATION_REMINDER"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 43
    .local v4, "state":I
    sget-object v7, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_BOOT_COMPLETED:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 45
    if-ne v4, v11, :cond_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v7, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_SHARING_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    const/16 v6, 0x14

    .line 59
    .local v6, "time_interval_value_from_db":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "time_key"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 65
    :goto_1
    const-string v7, "NotificationReminderReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[c] ReadSharingPref time_interval_value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v7, "time_key"

    const/16 v8, 0x14

    invoke-static {p1, v7, v8}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, "timeIntervalValue":I
    if-eq v6, v5, :cond_0

    .line 73
    sget-object v7, Lcom/android/settings/notificationreminder/GlobalConstant;->notificationreminderSettingsPrefs:Ljava/lang/String;

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 75
    .local v3, "servicePreference":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 76
    .local v2, "prefsEdit":Landroid/content/SharedPreferences$Editor;
    sget-object v7, Lcom/android/settings/notificationreminder/GlobalConstant;->timeIntervalValueChanged:Ljava/lang/String;

    invoke-interface {v2, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    const-string v7, "time_key"

    invoke-static {p1, v7, v6}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 61
    .end local v2    # "prefsEdit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "servicePreference":Landroid/content/SharedPreferences;
    .end local v5    # "timeIntervalValue":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
