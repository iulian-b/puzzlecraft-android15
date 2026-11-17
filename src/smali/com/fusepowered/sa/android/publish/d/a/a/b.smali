.class public Lcom/fusepowered/sa/android/publish/d/a/a/b;
.super Lcom/fusepowered/sa/android/publish/d/a/a/e;


# static fields
.field static a:Lcom/fusepowered/sa/android/publish/d/a/a/d;

.field static final synthetic c:Z


# instance fields
.field public b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/d/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->c:Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/d/a/a/d;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/d/a/a/d;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a:Lcom/fusepowered/sa/android/publish/d/a/a/d;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/fusepowered/sa/android/publish/d/a/a/g;)V
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/d/a/a/e;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->f:Ljava/lang/String;

    iput p1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->d:I

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    return-void
.end method

.method public static a(JD)Lcom/fusepowered/sa/android/publish/d/a/a/b;
    .locals 4

    sget-boolean v0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->c:Z

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid p"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a(J)I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/fusepowered/sa/android/publish/d/a/a/a;->a(ID)Lcom/fusepowered/sa/android/publish/d/a/a/a$a;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/d/a/a/b;

    iget v2, v0, Lcom/fusepowered/sa/android/publish/d/a/a/a$a;->a:I

    iget v0, v0, Lcom/fusepowered/sa/android/publish/d/a/a/a$a;->b:I

    invoke-static {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a(JI)Lcom/fusepowered/sa/android/publish/d/a/a/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/fusepowered/sa/android/publish/d/a/a/b;-><init>(ILcom/fusepowered/sa/android/publish/d/a/a/g;)V

    return-object v1
.end method

.method private static a(JI)Lcom/fusepowered/sa/android/publish/d/a/a/g;
    .locals 6

    new-instance v0, Lcom/fusepowered/sa/android/publish/d/a/a/g;

    int-to-long v2, p2

    mul-long/2addr v2, p0

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/d/a/a/g;-><init>(J)V

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;IJ)[J
    .locals 8

    new-array v1, p1, [J

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const-wide/16 v4, 0x0

    invoke-static {p0, v0, v2, v4, v5}, Lcom/fusepowered/sa/android/publish/d/a/a/f;->a(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p0, v0, v4, v2, v3}, Lcom/fusepowered/sa/android/publish/d/a/a/f;->a(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    int-to-long v6, v0

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    rem-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Ljava/nio/ByteBuffer;)[J
    .locals 4

    iget v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->d:I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->a()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->a(Ljava/nio/ByteBuffer;IJ)[J

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->e:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b(Ljava/nio/ByteBuffer;)[J

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->b:Lcom/fusepowered/sa/android/publish/d/a/a/g;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/sa/android/publish/d/a/a/g;->b(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a/a/b;->f:Ljava/lang/String;

    return-object v0
.end method
