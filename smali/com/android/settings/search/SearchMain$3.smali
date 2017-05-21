.class Lcom/android/settings/search/SearchMain$3;
.super Ljava/lang/Object;
.source "SearchMain.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 108
    iput-object p1, p0, Lcom/android/settings/search/SearchMain$3;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "keyWord"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 122
    const-string v1, "SearchMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "mArrayResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v1, p0, Lcom/android/settings/search/SearchMain$3;->this$0:Lcom/android/settings/search/SearchMain;

    # invokes: Lcom/android/settings/search/SearchMain;->searchMenu(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/android/settings/search/SearchMain;->access$000(Lcom/android/settings/search/SearchMain;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/settings/search/SearchMain$3;->this$0:Lcom/android/settings/search/SearchMain;

    # invokes: Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/CharSequence;)V
    invoke-static {v1, v0, p1}, Lcom/android/settings/search/SearchMain;->access$100(Lcom/android/settings/search/SearchMain;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
