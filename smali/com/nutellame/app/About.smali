.class public Lcom/nutellame/app/About;
.super Landroid/widget/Button;
.source "About.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/nutellame/app/About$1;

    invoke-direct {v0, p0, p1}, Lcom/nutellame/app/About$1;-><init>(Lcom/nutellame/app/About;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/nutellame/app/About;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
