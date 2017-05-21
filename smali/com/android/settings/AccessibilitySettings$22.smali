.class Lcom/android/settings/AccessibilitySettings$22;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2133
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2134
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 2135
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    # getter for: Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings;->access$1200(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2138
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind_test"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 2139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2140
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.colorblind"

    const-string v4, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2141
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    # getter for: Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings;->access$1400(Lcom/android/settings/AccessibilitySettings;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 2142
    const-string v2, "firstRun"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2144
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    .line 2151
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2152
    return-void

    .line 2146
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2147
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2148
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_blind"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2149
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$22;->this$0:Lcom/android/settings/AccessibilitySettings;

    # getter for: Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings;->access$1300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method
