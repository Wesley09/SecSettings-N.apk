.class Lcom/android/settings/AccessibilitySettings$2;
.super Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    # invokes: Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$100(Lcom/android/settings/AccessibilitySettings;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    # invokes: Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$200(Lcom/android/settings/AccessibilitySettings;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    # invokes: Lcom/android/settings/AccessibilitySettings;->updateExclusiveTalkback()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$300(Lcom/android/settings/AccessibilitySettings;)V

    .line 245
    return-void
.end method
