.class Lcom/android/settings/LockscreenMenuSettings$5;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/settings/LockscreenMenuSettings$5;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1145
    const-string v0, "LockScreenMenu"

    const-string v1, "showSafetyZoneEnableDialog(), cancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings$5;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    # getter for: Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/LockscreenMenuSettings;->access$000(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1147
    return-void
.end method
