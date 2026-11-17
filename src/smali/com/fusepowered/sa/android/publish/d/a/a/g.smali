.class public Lcom/fusepowered/sa/android/publish/d/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic a:Z

.field private static final serialVersionUID:J = -0xc822f40fa461a9eL


# instance fields
.field protected bits:[[J

.field private final pageCount:I

.field protected wlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/sa/android/publish/d/a/a/g;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/d/a/a/g;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->a(J)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    rem-int/lit16 v2, v0, 0x1000

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    div-int/lit16 v3, v0, 0x1000

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->pageCount:I

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->pageCount:I

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->bits:[[J

    if-eqz p3, :cond_2

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->bits:[[J

    const/16 v4, 0x1000

    new-array v4, v4, [J

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->bits:[[J

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->bits:[[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-array v2, v2, [J

    aput-object v2, v0, v1

    :cond_2
    return-void
.end method

.method public static a(J)I
    .locals 6

    const-wide/16 v4, 0x1

    sub-long v0, p0, v4

    const/4 v2, 0x6

    ushr-long/2addr v0, v2

    add-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 2

    sget-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Growing of paged bitset is not supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b()J
    .locals 3

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    int-to-long v0, v0

    const/4 v2, 0x6

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->c(J)I

    move-result v0

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x3f

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->bits:[[J

    div-int/lit16 v4, v0, 0x1000

    aget-object v1, v1, v4

    rem-int/lit16 v0, v0, 0x1000

    aget-wide v4, v1, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public b(I)[J
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->bits:[[J

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    return v0
.end method

.method protected c(J)I
    .locals 5

    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    if-lt v0, v1, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->d(J)V

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->wlen:I

    :cond_0
    return v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public d(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->a(I)V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/g;->pageCount:I

    return v0
.end method
