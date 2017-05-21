.class Lcom/android/settings/AccessibilitySettings$7;
.super Landroid/database/ContentObserver;
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
    .line 394
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    # invokes: Lcom/android/settings/AccessibilitySettings;->updateFlashNotificationSettingsScreen()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$800(Lcom/android/settings/AccessibilitySettings;)V

    .line 398
    return-void
.end method
