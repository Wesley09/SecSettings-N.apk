.class Lcom/android/settings/NotificationPanelMenu$4;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 177
    const/4 v1, 0x1

    .line 178
    .local v1, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 180
    .local v0, "dragEvent":I
    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    return v1

    .line 182
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/settings/NotificationPanelMenu;->access$900(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    .line 183
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v2}, Lcom/android/settings/NotificationPanelMenu;->access$800(Lcom/android/settings/NotificationPanelMenu;)V

    goto :goto_0

    .line 187
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 195
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
