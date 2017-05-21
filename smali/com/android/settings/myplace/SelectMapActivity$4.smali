.class Lcom/android/settings/myplace/SelectMapActivity$4;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$4;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "str"    # Landroid/text/Editable;

    .prologue
    .line 213
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$4;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->setSearchButtonState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$700(Lcom/android/settings/myplace/SelectMapActivity;I)V

    .line 205
    return-void
.end method
