.class Lcom/android/settings/search/SearchMain$2;
.super Ljava/lang/Object;
.source "SearchMain.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchMain;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/search/SearchMain$2;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/widget/TextView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 103
    const-string v0, "SearchMain"

    const-string v1, "onEditorAction : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    return v0
.end method
