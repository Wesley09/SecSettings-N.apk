.class public Lcom/android/settings/search/SearchDirectSettingUpdate;
.super Ljava/lang/Object;
.source "SearchDirectSettingUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mKeyMatchDBInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final GLOBAL:I

.field private final NONE:I

.field private final SECURE:I

.field private final SYSTEM:I

.field private final TAG:Ljava/lang/String;

.field private mDialogType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "SearchDirectSettingUpdate"

    iput-object v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->NONE:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->SYSTEM:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->GLOBAL:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->SECURE:I

    .line 47
    sput-object p1, Lcom/android/settings/search/SearchDirectSettingUpdate;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/search/SearchDirectSettingUpdate;->initDBInof()V

    .line 49
    return-void
.end method

.method private initDBInof()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "vibrate_when_ringing"

    const-string v2, "vibrate_when_ringing"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dtmf_tone"

    const-string v2, "dtmf_tone"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "sound_effects"

    const-string v2, "sound_effects_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_sounds"

    const-string v2, "lockscreen_sounds_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "gps_notification_sounds"

    const-string v2, "gps_noti_sound_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "haptic_feedback"

    const-string v2, "haptic_feedback_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_audio_media_enabled"

    const-string v2, "dock_audio_media_enabled"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_sounds"

    const-string v2, "dock_sounds_enabled"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "backup_data"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_restore"

    const-string v2, "backup_auto_restore"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "data_transfer_mode"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_auto_rotate_screen_2nd_preference"

    const-string v2, "accelerometer_rotation_second"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_lock_screen_rotation_preference"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_speak_password_preference"

    const-string v2, "speak_password"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_power_button_ends_call_preference"

    const-string v2, "incall_power_button_behavior"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_key_hold"

    const-string v2, "power_key_hold"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "high_contrast"

    const-string v2, "high_contrast"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "mono_audio_key"

    const-string v2, "mono_audio_db"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "all_sound_off_key"

    const-string v2, "all_sound_off"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "flash_notification_key"

    const-string v2, "flash_notification"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dock_sounds"

    const-string v2, "dock_sounds_enabled"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "cradle_enable"

    const-string v2, "cradle_enable"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "desk_home_screen_display"

    const-string v2, "desk_home_screen_display"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "automatic_unlock"

    const-string v2, "automatic_unlock"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "audio_applications"

    const-string v2, "audio_applications"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_incoming_calls"

    const-string v2, "dormant_disable_incoming_calls"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_notifications"

    const-string v2, "dormant_disable_notifications"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_alarm_and_timer"

    const-string v2, "dormant_disable_alarm_and_timer"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_led_indicator"

    const-string v2, "dormant_disable_incoming_calls"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_incoming_calls"

    const-string v2, "dormant_disable_led_indicator"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "brightness_adjustment"

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "key_multi_window"

    const-string v2, "multi_window_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_mode"

    const-string v2, "screen_mode_automatic_setting"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "accelerometer"

    const-string v2, "accelerometer_rotation"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_stay"

    const-string v2, "intelligent_sleep_mode"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_rotation"

    const-string v2, "intelligent_rotation_mode"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_pause"

    const-string v2, "smart_pause"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_scroll"

    const-string v2, "smart_scroll"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const-string v2, "smart_scroll_visual_feedback_icon"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_web"

    const-string v2, "smart_scroll_adv_web"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_list"

    const-string v2, "smart_scroll_adv_email_list"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_email_body"

    const-string v2, "smart_scroll_adv_email_body"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_readers_hub"

    const-string v2, "smart_scroll_adv_readers_hub"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_chrome"

    const-string v2, "smart_scroll_adv_chrome"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_adv_gmail_body"

    const-string v2, "smart_scroll_adv_gmail_body"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "clear_font"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "display_battery_level"

    const-string v2, "display_battery_percentage"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "edit_screen_capture"

    const-string v2, "edit_after_screen_capture"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_mode"

    const-string v2, "power_saving_mode"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_charging_key"

    const-string v2, "led_indicator_charing"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_low_battery_key"

    const-string v2, "led_indicator_low_battery"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_missed_event_key"

    const-string v2, "led_indicator_missed_event"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_voice_recording_key"

    const-string v2, "led_indicator_voice_recording"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "led_indicator_incoming_notification_key"

    const-string v2, "led_indicator_incoming_notification"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dialer"

    const-string v2, "onehand_dialer_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "samsung_keypad"

    const-string v2, "onehand_samsungkeypad_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "calculator"

    const-string v2, "onehand_calculator_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pattern"

    const-string v2, "onehand_pattern_enabled"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_cpu"

    const-string v2, "psm_cpu_clock"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_display"

    const-string v2, "psm_display"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_background_color"

    const-string v2, "psm_background_colour"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "power_saving_haptic"

    const-string v2, "psm_haptic_feedback"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_stay"

    const-string v2, "intelligent_sleep_mode"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_rotation"

    const-string v2, "intelligent_rotation_mode"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_pause"

    const-string v2, "smart_pause"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_scroll"

    const-string v2, "smart_scroll"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "torchlight_enable"

    const-string v2, "torchlight_enable"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "date"

    const-string v2, "auto_time"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "auto_zone"

    const-string v2, "auto_time_zone"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "24 hour"

    const-string v2, "time_12_24"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "keep_screen_on"

    const-string v2, "stay_on_while_plugged_in"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enforce_read_external"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "enable_adb"

    const-string v2, "adb_enabled"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "bugreport_in_power"

    const-string v2, "bugreport_in_power_menu"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "allow_mock_location"

    const-string v2, "mock_location"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "wait_for_debugger"

    const-string v2, "wait_for_debugger"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "verify_apps_over_usb"

    const-string v2, "verifier_verify_adb_installs"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_touches"

    const-string v2, "show_touches"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pointer_location"

    const-string v2, "pointer_location"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "debug_layout"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_screen_udpates"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_layers_udpates"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_hw_overdraw"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_screen_updates"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "disable_overlays"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "force_hw_ui"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "force_msaa"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "strict_mode"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_cpu_usage"

    const-string v2, "show_processes"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "track_frame_time"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "immediately_destroy_activities"

    const-string v2, "always_finish_activities"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_all_anrs"

    const-string v2, "anr_show_background"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "location_gps"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "assisted_gps"

    const-string v2, "assisted_gps_enabled"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "show_password"

    const-string v2, "show_password"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_install_applications"

    const-string v2, "install_non_market_apps"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_verify_applications"

    const-string v2, "package_verifier_enable"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_airplane"

    const-string v2, "airplane_mode_on"

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0584

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0586

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b058f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b0590

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbeam_mode"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b059e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b059f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05a4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05af

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v1, 0x7f0b05b1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "toggle_android_beam"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_shortcut_menu"

    const-string v2, "lock_screen_shortcut"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const-string v2, "kg_enable_camera_widget"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const-string v2, "dualclock_menu_settings"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "screensaver"

    const-string v2, "screensaver_enabled"

    invoke-direct {p0, v1, v2, v7}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "color_blind"

    const-string v2, "color_blind"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "assistant_menu_preference"

    const-string v2, "assistant_menu"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "access_control_key"

    const-string v2, "access_control_use"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "smartscreen_scroll"

    const-string v2, "smart_scroll"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "location_toggle"

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_motion"

    const-string v2, "air_motion_engine"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "motion"

    const-string v2, "master_motion"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "surface"

    const-string v2, "surface_motion_engine"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const-string v2, "air_motion_glance_view"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const-string v2, "air_motion_scroll"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const-string v2, "air_motion_turn"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const-string v2, "air_motion_item_move"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const-string v2, "air_motion_call_accept"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "air_pin"

    const-string v2, "air_motion_clip"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const-string v2, "motion_pick_up_to_call_out"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const-string v2, "motion_pick_up"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const-string v2, "motion_zooming"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const-string v2, "motion_pan_to_browse_image"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const-string v2, "motion_overturn"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const-string v2, "surface_palm_swipe"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const-string v2, "surface_palm_touch"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const-string v2, "finger_air_view_information_preview"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const-string v2, "finger_air_view_pregress_bar_preview"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const-string v2, "finger_air_view_speed_dial_tip"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const-string v2, "finger_air_view_magnifier"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search/SearchDirectSettingUpdate;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method private setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "DBName"    # Ljava/lang/String;
    .param p3, "DBType"    # I

    .prologue
    .line 251
    new-instance v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;-><init>(Lcom/android/settings/search/SearchDirectSettingUpdate;)V

    .line 253
    .local v0, "directDBinfoItem":Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
    iput-object p1, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 254
    iput-object p2, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 255
    iput p3, v0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBType:I

    .line 257
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 450
    iget v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 451
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    .line 454
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/settings/search/SearchDirectSettingUpdate;->mDialogType:I

    .line 463
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 457
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
