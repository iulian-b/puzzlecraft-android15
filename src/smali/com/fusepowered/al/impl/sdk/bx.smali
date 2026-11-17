.class Lcom/fusepowered/al/impl/sdk/bx;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/bv;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/fusepowered/al/impl/sdk/bv;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/bx;->a:Lcom/fusepowered/al/impl/sdk/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/bx;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/fusepowered/al/impl/sdk/bx;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/al/impl/sdk/bv;Ljava/lang/String;JLcom/fusepowered/al/impl/sdk/bw;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fusepowered/al/impl/sdk/bx;-><init>(Lcom/fusepowered/al/impl/sdk/bv;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/fusepowered/al/impl/sdk/bx;->c:J

    return-wide v0
.end method
