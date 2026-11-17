.class public Lcom/fusepowered/sa/android/publish/f/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/f/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/fusepowered/sa/android/publish/f/d$a;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fusepowered/sa/android/publish/f/d$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/f/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/f/d;->b:Lcom/fusepowered/sa/android/publish/f/d$a;

    iput p3, p0, Lcom/fusepowered/sa/android/publish/f/d;->c:I

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/f/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/f/d;)Lcom/fusepowered/sa/android/publish/f/d$a;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/d;->b:Lcom/fusepowered/sa/android/publish/f/d$a;

    return-object v0
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/f/d;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/f/d;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/sa/android/publish/f/d$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/f/d$1;-><init>(Lcom/fusepowered/sa/android/publish/f/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
