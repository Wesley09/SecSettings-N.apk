.class Lcom/android/settings/FeatureSettings$9;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;

.field final synthetic val$setting_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iput-object p2, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x1

    .line 1061
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1062
    const-string v8, "air_motion"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1063
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1064
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v2, "motion_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1066
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1068
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1069
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v4, "motion_scroll_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1071
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1073
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1074
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v1, "motion_browse_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1076
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1078
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1079
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v3, "motion_move_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1081
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1107
    .end local v1    # "motion_browse_changed":Landroid/content/Intent;
    .end local v2    # "motion_changed":Landroid/content/Intent;
    .end local v3    # "motion_move_changed":Landroid/content/Intent;
    .end local v4    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v7, "talk_back_off":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1109
    return-void

    .line 1088
    .end local v7    # "talk_back_off":Landroid/content/Intent;
    :cond_1
    const-string v8, "air_view"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1089
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1094
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_2
    const-string v8, "smart_stay"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1095
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1096
    :cond_3
    const-string v8, "smart_pause"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1097
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_pause"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1098
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v5, "smart_pause_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1101
    .end local v5    # "smart_pause_changed":Landroid/content/Intent;
    :cond_4
    const-string v8, "smart_scroll"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1102
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1103
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v6, "smart_scroll_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
