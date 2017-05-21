.class public Lcom/android/settings/DualHelpActivity;
.super Landroid/app/Activity;
.source "DualHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v13, 0x7f040077

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->setContentView(I)V

    .line 15
    const v13, 0x7f0b0134

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 16
    .local v10, "title1":Landroid/widget/TextView;
    const v13, 0x7f0b0137

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 17
    .local v11, "title2":Landroid/widget/TextView;
    const v13, 0x7f0b0139

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 18
    .local v12, "title3":Landroid/widget/TextView;
    const v13, 0x7f0b0136

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, "content1":Landroid/widget/TextView;
    const v13, 0x7f0b0138

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    .local v1, "content2":Landroid/widget/TextView;
    const v13, 0x7f0b013a

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21
    .local v2, "content3":Landroid/widget/TextView;
    const v13, 0x7f0b013c

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 22
    .local v8, "dsa_title":Landroid/widget/TextView;
    const v13, 0x7f0b013d

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 23
    .local v3, "dsa_content1":Landroid/widget/TextView;
    const v13, 0x7f0b013e

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 24
    .local v4, "dsa_content2":Landroid/widget/TextView;
    const v13, 0x7f0b013f

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 25
    .local v5, "dsa_content3":Landroid/widget/TextView;
    const v13, 0x7f0b0140

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 26
    .local v6, "dsa_content4":Landroid/widget/TextView;
    const v13, 0x7f0b0141

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 29
    .local v7, "dsa_content5":Landroid/widget/TextView;
    const v13, 0x7f09117c

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v13, 0x7f09117d

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 31
    const v13, 0x7f09117e

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 33
    const v13, 0x7f091180

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v13, 0x7f091181

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(I)V

    .line 35
    const v13, 0x7f0b0135

    invoke-virtual {p0, v13}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 37
    .local v9, "image":Landroid/widget/ImageView;
    const v13, 0x7f09117f

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(I)V

    .line 38
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    const v13, 0x7f09118d

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    .line 42
    const v13, 0x7f091199

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v13, 0x7f09119a

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v13, 0x7f09119b

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const v13, 0x7f09119c

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    .line 46
    const v13, 0x7f09119d

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method
