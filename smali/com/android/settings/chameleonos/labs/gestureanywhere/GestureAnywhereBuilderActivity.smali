.class public Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;
.super Landroid/app/ListActivity;
.source "GestureAnywhereBuilderActivity.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;,
        Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;,
        Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;
    }
.end annotation


# static fields
.field private static sStore:Landroid/gesture/GestureLibrary;


# instance fields
.field private mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

.field private mEmpty:Landroid/widget/TextView;

.field private mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

.field private final mSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreFile:Ljava/io/File;

.field private mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string v2, "ga_gestures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mStoreFile:Ljava/io/File;

    .line 76
    new-instance v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)V

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mSorter:Ljava/util/Comparator;

    .line 333
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    return-object v0
.end method

.method static synthetic access$200()Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mStoreFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->checkForEmpty()V

    return-void
.end method

.method private checkForEmpty()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    invoke-virtual {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mEmpty:Landroid/widget/TextView;

    const v1, 0x7f0709d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_0
    return-void
.end method

.method private deleteGesture(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)V
    .locals 5
    .param p1, "gesture"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .prologue
    const/4 v4, 0x0

    .line 210
    sget-object v1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->gesture:Landroid/gesture/Gesture;

    invoke-virtual {v1, v2, v3}, Landroid/gesture/GestureLibrary;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 211
    sget-object v1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->save()Z

    .line 213
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    .line 214
    .local v0, "adapter":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;
    invoke-virtual {v0, v4}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->setNotifyOnChange(Z)V

    .line 215
    invoke-virtual {v0, p1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->remove(Ljava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mSorter:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->sort(Ljava/util/Comparator;)V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->checkForEmpty()V

    .line 218
    invoke-virtual {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;->notifyDataSetChanged()V

    .line 220
    const v1, 0x7f0709dd

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 221
    return-void
.end method

.method private editGesture(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    const-string v1, "uri"

    iget-object v2, p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "name"

    iget-object v2, p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method

.method static getStore()Landroid/gesture/GestureLibrary;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method private loadGestures()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    invoke-virtual {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->cancel(Z)Z

    .line 159
    :cond_0
    new-instance v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    .line 160
    return-void
.end method


# virtual methods
.method public addGesture(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    .line 132
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 141
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_anywhere_changed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 144
    invoke-direct {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->loadGestures()V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 195
    .local v1, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .line 197
    .local v0, "gesture":Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 199
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->editGesture(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->deleteGesture(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0400c9

    invoke-virtual {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->setContentView(I)V

    .line 100
    new-instance v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;-><init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    .line 101
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mAdapter:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    sget-object v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mStoreFile:Ljava/io/File;

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v0

    sput-object v0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->sStore:Landroid/gesture/GestureLibrary;

    .line 106
    :cond_0
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mEmpty:Landroid/widget/TextView;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->loadGestures()V

    .line 109
    new-instance v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 184
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 185
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    const/4 v1, 0x1

    const v2, 0x7f0709db

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 188
    const/4 v1, 0x2

    const v2, 0x7f0709dc

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 189
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    invoke-virtual {v0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;->cancel(Z)Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mTask:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$GesturesLoadTask;

    .line 170
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mStoreFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->mStoreFile:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 118
    :cond_0
    return-void
.end method

.method public reloadGestures(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->loadGestures()V

    .line 127
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereCreateGestureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
