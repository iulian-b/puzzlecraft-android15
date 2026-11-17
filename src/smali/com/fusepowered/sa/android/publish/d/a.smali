.class public Lcom/fusepowered/sa/android/publish/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/d/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fusepowered/sa/android/publish/d/a/a/c;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/d/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a;->a:Lcom/fusepowered/sa/android/publish/d/a/a/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/d/a;->a:Lcom/fusepowered/sa/android/publish/d/a/a/c;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/d/a/a/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
