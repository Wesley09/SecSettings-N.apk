.class Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V
    .locals 0

    .prologue
    .line 2953
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2956
    if-eqz p2, :cond_2

    .line 2958
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2959
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->showDialog(I)V

    .line 2978
    :goto_0
    return v2

    .line 2960
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2961
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 2963
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2964
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2965
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 2966
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2970
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2971
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 2973
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2974
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2975
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0
.end method
