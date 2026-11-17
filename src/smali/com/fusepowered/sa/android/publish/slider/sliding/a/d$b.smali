.class Lcom/fusepowered/sa/android/publish/slider/sliding/a/d$b;
.super Lcom/fusepowered/sa/android/publish/slider/sliding/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/slider/sliding/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fusepowered/sa/android/publish/slider/sliding/a/d;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/a/d$b$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/d$b$1;-><init>(Lcom/fusepowered/sa/android/publish/slider/sliding/a/d$b;Lcom/fusepowered/sa/android/publish/slider/sliding/a/d;)V

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/a/e;->a(Lcom/fusepowered/sa/android/publish/slider/sliding/a/e$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
