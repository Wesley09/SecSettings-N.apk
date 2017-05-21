.class Lcom/android/settings/AccessibilitySettings$25;
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
    .line 2224
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    # getter for: Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$1500(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2228
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    # getter for: Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$1600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2229
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->removeDialog(I)V

    .line 2230
    return-void
.end method
