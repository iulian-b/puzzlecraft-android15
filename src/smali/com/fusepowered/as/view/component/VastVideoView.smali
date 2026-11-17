.class public Lcom/fusepowered/as/view/component/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"


# instance fields
.field private vastVideoViewSizeChangedEventHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private videoDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public addVastVideoViewSizeChangedEventHandler(Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public getVideoDuration()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->videoDuration:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/VideoView;->onSizeChanged(IIII)V

    .line 49
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;

    .line 50
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;->onVastVideoViewSizeChanged(IIII)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public removeVastVideoViewSizeChangedEventHandler(Lcom/fusepowered/as/view/component/VastVideoViewSizeChangedEventHandler;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VastVideoView;->vastVideoViewSizeChangedEventHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/fusepowered/as/view/component/VastVideoView;->videoDuration:I

    .line 42
    return-void
.end method
