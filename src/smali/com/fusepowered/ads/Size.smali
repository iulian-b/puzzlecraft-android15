.class public Lcom/fusepowered/ads/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public final landscapeHeight:I

.field public final landscapeWidth:I

.field public final portraitHeight:I

.field public final portraitWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "portraitHeight"    # I
    .param p2, "portraitWidth"    # I
    .param p3, "landscapeHeight"    # I
    .param p4, "landscapeWidth"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/fusepowered/ads/Size;->portraitHeight:I

    .line 14
    iput p2, p0, Lcom/fusepowered/ads/Size;->portraitWidth:I

    .line 15
    iput p3, p0, Lcom/fusepowered/ads/Size;->landscapeHeight:I

    .line 16
    iput p4, p0, Lcom/fusepowered/ads/Size;->landscapeWidth:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/fusepowered/ads/Size;->portraitHeight:I

    .line 21
    iput v0, p0, Lcom/fusepowered/ads/Size;->portraitWidth:I

    .line 22
    iput v0, p0, Lcom/fusepowered/ads/Size;->landscapeHeight:I

    .line 23
    iput v0, p0, Lcom/fusepowered/ads/Size;->landscapeWidth:I

    .line 24
    return-void
.end method


# virtual methods
.method public hasAllDimensions()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fusepowered/ads/Size;->portraitHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/ads/Size;->portraitWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/ads/Size;->landscapeHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/ads/Size;->landscapeWidth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
