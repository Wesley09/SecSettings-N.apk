.class Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GestureAnywhereBuilderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mThumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->mThumbnails:Ljava/util/Map;

    .line 340
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 341
    return-void
.end method


# virtual methods
.method addBitmap(Ljava/lang/Long;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->mThumbnails:Ljava/util/Map;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 349
    if-nez p2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400c8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .local v0, "gesture":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    move-object v1, p2

    .line 354
    check-cast v1, Landroid/widget/TextView;

    .line 356
    .local v1, "label":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 357
    iget-object v2, v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->mThumbnails:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    invoke-virtual {v3}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 361
    return-object p2
.end method
