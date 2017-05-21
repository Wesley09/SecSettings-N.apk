.class Lcom/android/settings/NetworkManagement$4;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$4;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 571
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 573
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
