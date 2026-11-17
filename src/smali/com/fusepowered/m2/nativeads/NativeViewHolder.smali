.class Lcom/fusepowered/m2/nativeads/NativeViewHolder;
.super Ljava/lang/Object;
.source "NativeViewHolder.java"


# static fields
.field static final EMPTY_VIEW_HOLDER:Lcom/fusepowered/m2/nativeads/NativeViewHolder;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field callToActionView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field iconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mainImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mainView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;

    invoke-direct {v0}, Lcom/fusepowered/m2/nativeads/NativeViewHolder;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/fusepowered/m2/nativeads/NativeViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contents"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to null TextView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    if-nez p2, :cond_1

    .line 89
    const-string v0, "Attempted to set TextView contents to null."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/fusepowered/m2/nativeads/ViewBinder;)Lcom/fusepowered/m2/nativeads/NativeViewHolder;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "viewBinder"    # Lcom/fusepowered/m2/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;

    invoke-direct {v1}, Lcom/fusepowered/m2/nativeads/NativeViewHolder;-><init>()V

    .line 30
    .local v1, "nativeViewHolder":Lcom/fusepowered/m2/nativeads/NativeViewHolder;
    iput-object p0, v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    .line 32
    :try_start_0
    iget v2, p1, Lcom/fusepowered/m2/nativeads/ViewBinder;->titleId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->titleView:Landroid/widget/TextView;

    .line 33
    iget v2, p1, Lcom/fusepowered/m2/nativeads/ViewBinder;->textId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->textView:Landroid/widget/TextView;

    .line 34
    iget v2, p1, Lcom/fusepowered/m2/nativeads/ViewBinder;->callToActionId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 35
    iget v2, p1, Lcom/fusepowered/m2/nativeads/ViewBinder;->mainImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    .line 36
    iget v2, p1, Lcom/fusepowered/m2/nativeads/ViewBinder;->iconImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->iconImageView:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "nativeViewHolder":Lcom/fusepowered/m2/nativeads/NativeViewHolder;
    :goto_0
    return-object v1

    .line 38
    .restart local v1    # "nativeViewHolder":Lcom/fusepowered/m2/nativeads/NativeViewHolder;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    invoke-static {v2, v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    sget-object v1, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/fusepowered/m2/nativeads/NativeViewHolder;

    goto :goto_0
.end method


# virtual methods
.method public setViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method update(Lcom/fusepowered/m2/nativeads/NativeResponse;)V
    .locals 2
    .param p1, "nativeResponse"    # Lcom/fusepowered/m2/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->callToActionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->loadMainImage(Landroid/widget/ImageView;)V

    .line 49
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/fusepowered/m2/nativeads/NativeResponse;->loadIconImage(Landroid/widget/ImageView;)V

    .line 50
    return-void
.end method

.method updateExtras(Lcom/fusepowered/m2/nativeads/NativeResponse;Lcom/fusepowered/m2/nativeads/ViewBinder;)V
    .locals 8
    .param p1, "nativeResponse"    # Lcom/fusepowered/m2/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewBinder"    # Lcom/fusepowered/m2/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 54
    iget-object v5, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 55
    const-string v5, "Attempted to bind extras on a null main view."

    invoke-static {v5}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v5, p2, Lcom/fusepowered/m2/nativeads/ViewBinder;->extras:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p2, Lcom/fusepowered/m2/nativeads/ViewBinder;->extras:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 60
    .local v3, "resourceId":I
    iget-object v5, p0, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->mainView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Lcom/fusepowered/m2/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "content":Ljava/lang/Object;
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 65
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {p1, v2, v4}, Lcom/fusepowered/m2/nativeads/NativeResponse;->loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 67
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 69
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 71
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "view":Landroid/view/View;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/Object;
    invoke-direct {p0, v4, v0}, Lcom/fusepowered/m2/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .restart local v0    # "content":Ljava/lang/Object;
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be an instance of TextView or ImageView."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
