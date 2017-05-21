.class public Lcom/android/settings/OneHandHelp;
.super Landroid/app/Activity;
.source "OneHandHelp.java"


# instance fields
.field private mHelp_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "OneHandHelp"

    const-string v1, "OneHandHelp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const v0, 0x7f0400e2

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->setContentView(I)V

    .line 39
    const v0, 0x7f0b02a5

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/OneHandHelp;->mHelp_text:Landroid/widget/TextView;

    .line 46
    return-void
.end method
