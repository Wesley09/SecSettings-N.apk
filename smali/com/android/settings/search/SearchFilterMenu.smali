.class public Lcom/android/settings/search/SearchFilterMenu;
.super Ljava/lang/Object;
.source "SearchFilterMenu.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sput-object p1, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    return-void
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "lock_screen_widget_options"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 42
    const-string v1, "lock_screen_shortcut_menu"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 43
    const-string v1, "safetyzone_settings"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 44
    const-string v1, "unlock_effect"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 45
    const-string v1, "help_text"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 46
    const-string v1, "say_your_wakeup"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 47
    const-string v1, "set_wakeup_command"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 48
    const-string v1, "multiple_lock_screen"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 49
    const-string v1, "biometric_weak_improve_matching"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 50
    const-string v1, "biometric_weak_liveliness"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 51
    const-string v1, "lock_after_timeout"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 52
    const-string v1, "power_button_instantly_locks"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 53
    const-string v1, "visiblepattern"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 55
    :cond_1
    const-string v1, "multiple_lock_screen"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 56
    const-string v1, "biometric_weak_improve_matching"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 57
    const-string v1, "biometric_weak_liveliness"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 58
    const-string v1, "lock_after_timeout"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 59
    const-string v1, "power_button_instantly_locks"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 60
    const-string v1, "visiblepattern"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "lock_screen_shortcut_menu"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 64
    const-string v1, "unlock_effect"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 65
    const-string v1, "help_text"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 66
    const-string v1, "say_your_wakeup"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 67
    const-string v1, "set_wakeup_command"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_0

    .line 69
    const-string v1, "visiblepattern"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v1, "lock_screen_shortcut_menu"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 73
    const-string v1, "unlock_effect"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 74
    const-string v1, "help_text"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 75
    const-string v1, "say_your_wakeup"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 76
    const-string v1, "set_wakeup_command"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 77
    const-string v1, "biometric_weak_improve_matching"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 78
    const-string v1, "biometric_weak_liveliness"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 83
    :sswitch_1
    const-string v1, "visiblepattern"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :sswitch_2
    const-string v1, "visiblepattern"

    invoke-direct {p0, v1}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method
