.class Lcom/fusepowered/nx/monetization/mraid/AdPosition;
.super Ljava/lang/Object;
.source "AdPosition.java"


# instance fields
.field private customPosition:Landroid/graphics/Rect;

.field private forcedPosition:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    .line 32
    return-void
.end method


# virtual methods
.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->forcedPosition:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->forcedPosition:Landroid/graphics/Rect;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setCustomPosition(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    .line 37
    return-void
.end method

.method public setForcedPosition(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->forcedPosition:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public validateCustomPosition(Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "closeRegion"    # Landroid/widget/ImageView;
    .param p2, "parentRect"    # Landroid/graphics/Rect;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 57
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 65
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 68
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_4

    .line 72
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_5

    .line 75
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/AdPosition;->customPosition:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 78
    :cond_5
    return-void
.end method
