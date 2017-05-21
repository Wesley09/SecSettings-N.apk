.class Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;
.super Landroid/os/AsyncTask;
.source "GestureAnywhereBuilderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mPathColor:I

.field private mThumbnailInset:I

.field private mThumbnailSize:I

.field final synthetic this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;
    .param p2, "x1"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 292
    :goto_0
    return-object v8

    .line 265
    :cond_0
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 266
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 269
    :cond_1
    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;
    invoke-static {}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$200()Landroid/gesture/GestureLibrary;

    move-result-object v7

    .line 271
    .local v7, "store":Landroid/gesture/GestureLibrary;
    invoke-virtual {v7}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    invoke-virtual {v7}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 273
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 289
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 275
    .restart local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v4}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gesture/Gesture;

    .line 276
    .local v1, "gesture":Landroid/gesture/Gesture;
    iget v8, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mThumbnailSize:I

    iget v9, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mThumbnailSize:I

    iget v10, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mThumbnailInset:I

    iget v11, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mPathColor:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/gesture/Gesture;->toBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    invoke-direct {v5}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;-><init>()V

    .line 279
    .local v5, "namedGesture":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    const/16 v8, 0x7c

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 280
    .local v6, "separator":I
    iput-object v1, v5, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    .line 281
    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->name:Ljava/lang/String;

    .line 282
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->uri:Ljava/lang/String;

    .line 284
    iget-object v8, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    invoke-static {v8}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    move-result-object v8

    iget-object v9, v5, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    invoke-virtual {v9}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->addBitmap(Ljava/lang/Long;Landroid/graphics/Bitmap;)V

    .line 285
    new-array v8, v13, [Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    aput-object v5, v8, v12

    invoke-virtual {p0, v8}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "gesture":Landroid/gesture/Gesture;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "namedGesture":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    .end local v6    # "separator":I
    :cond_5
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 312
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    invoke-virtual {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$400(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$400(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    const v2, 0x7f0709e0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mStoreFile:Ljava/io/File;
    invoke-static {v4}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$500(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    const v1, 0x7f090299

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    const v1, 0x7f09029a

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # invokes: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->checkForEmpty()V
    invoke-static {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$600(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 250
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    invoke-virtual {v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 251
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mPathColor:I

    .line 252
    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mThumbnailInset:I

    .line 253
    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->mThumbnailSize:I

    .line 255
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    const v2, 0x7f090299

    invoke-virtual {v1, v2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    const v2, 0x7f09029a

    invoke-virtual {v1, v2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    invoke-static {v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->setNotifyOnChange(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    invoke-static {v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->clear()V

    .line 260
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)V
    .locals 6
    .param p1, "values"    # [Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 299
    iget-object v5, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    invoke-static {v5}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    move-result-object v0

    .line 300
    .local v0, "adapter":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->setNotifyOnChange(Z)V

    .line 302
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 303
    .local v2, "gesture":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    invoke-virtual {v0, v2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->add(Ljava/lang/Object;)V

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "gesture":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    # getter for: Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mSorter:Ljava/util/Comparator;
    invoke-static {v5}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->access$300(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Ljava/util/Comparator;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->sort(Ljava/util/Comparator;)V

    .line 307
    invoke-virtual {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->notifyDataSetChanged()V

    .line 308
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, [Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->onProgressUpdate([Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)V

    return-void
.end method
