.class Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 3
    .param p1, "toggleSwitch"    # Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2832
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    .line 2835
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2836
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2837
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 2838
    return v2
.end method
