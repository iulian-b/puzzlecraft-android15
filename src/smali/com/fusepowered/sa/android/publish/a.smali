.class public Lcom/fusepowered/sa/android/publish/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/a;->c:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/a;->d:Z

    iput v1, p0, Lcom/fusepowered/sa/android/publish/a;->e:I

    iput v1, p0, Lcom/fusepowered/sa/android/publish/a;->f:I

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/fusepowered/sa/android/publish/a;->e:I

    iput p4, p0, Lcom/fusepowered/sa/android/publish/a;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/a;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/a;->d:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/a;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/a;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/a;->f:I

    return v0
.end method
